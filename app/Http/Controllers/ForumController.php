<?php

namespace App\Http\Controllers;

use App\Models\Forum;
use App\Rules\NoProfanity;
use Illuminate\Http\Request;
use App\Models\SubForum;
use Illuminate\Support\Facades\DB;

class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function forum_index_member(Request $request)
     {
         $query = Forum::orderBy('created_at', 'asc');
         
         $subjectFilter = $request->input('subject');
         
         if ($subjectFilter) {
             $query->where('subject', $subjectFilter);
         }
         
         if ($request->filled('start_date') && $request->filled('end_date')) {
             $query->whereBetween('created_at', [$request->input('start_date'), $request->input('end_date')]);
         }
         
         if ($request->filled('year')) {
             $query->whereYear('created_at', $request->input('year'));
         }
         
         if (!$subjectFilter && !$request->filled('start_date') && !$request->filled('end_date') && !$request->filled('year')) {
             $forum = Forum::orderBy('created_at', 'desc')->paginate(10);
             $isPaginated = true;
         } else {
             $forum = $query->get(); 
             $isPaginated = false;
         }
         $subForum = SubForum::orderBy('created_at', 'asc')->get();
         $subForumCount = SubForum::select('forum_id', DB::raw('count(*) as count'))
             ->groupBy('forum_id')
             ->pluck('count', 'forum_id');
         $check_forum_status = Forum::where('publish', 1)->count();
         
         return view('forum', compact('forum', 'check_forum_status', 'subForum', 'subForumCount','isPaginated'));
     }
     

    public function comment_post(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'subject' => ['required'],
            'email' => ['required', 'email'],
            'comment' => ['required'],
        ]);

        // Create an instance of the NoProfanity rule
        $noProfanity = new NoProfanity();

        // Check for profanity in each field
        $fieldsWithProfanity = [];
        if (!$noProfanity->passes('name', $request->name)) {
            $fieldsWithProfanity[] = 'name';
        }
        if (!$noProfanity->passes('subject', $request->subject)) {
            $fieldsWithProfanity[] = 'subject';
        }
        if (!$noProfanity->passes('comment', $request->comment)) {
            $fieldsWithProfanity[] = 'comment';
        }

        // If any fields contain profanity, show a warning and redirect back
        if (!empty($fieldsWithProfanity)) {
            toastr()->warning('Warning', 'atribut berisi bahasa yang tidak pantas.');
            return redirect()->back()->withInput();
        }
        if (strlen($request->subject) > 100) {
            toastr()->warning('Warning', 'maksimal subject 100');
            return redirect()->back()->withInput();
        }


        // Save the forum comment
        $forum = new Forum();
        $forum->name = $request->name;
        $forum->subject = $request->subject;
        $forum->email = $request->email;
        $forum->publish = '1';
        $forum->comment = $request->comment;
        $forum->close_the_forum = 'false';
        $forum->save();

        // Success message
        toastr()->success('Success', 'Comment successfully posted.');
        return redirect()->back();
    }


    public function index_master_admin()
    {
        $forum = Forum::orderBy('created_at', 'asc')->get();
        return view('admin.forum.index', compact('forum'));
    }
    public function publish($id)
    {
        $forum = Forum::find($id);
        if ($forum->publish == 0) {
            $forum->publish = 1;
            $forum->create_publish = now();
            $forum->save();
            toastr()->success('Success', 'berhasil di publish');
            return redirect()->back();
        } else if ($forum->publish == 1) {
            $forum->publish = 0;
            $forum->save();
            toastr()->success('Success', 'Berhasil Non Publish');
            return redirect()->back();
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function status_forum($params)
    {
        $forum = Forum::find($params);
        if ($forum->close_the_forum == 'false') {
            $forum->close_the_forum = 'true';
            $forum->save();
            toastr()->success('Success', 'berhasil di Tutup');
            return redirect()->back();
        } else if ($forum->close_the_forum == 'true') {
            $forum->close_the_forum = 'false';
            $forum->save();
            toastr()->success('Success', 'Berhasil Buka');
            return redirect()->back();
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function show(Forum $forum)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function edit(Forum $forum)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Forum $forum)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Temukan forum berdasarkan ID
        $forum = Forum::find($id);

        // Cek jika forum ditemukan
        if ($forum) {
            // Periksa apakah ada record anak di SubForum yang terkait dengan forum ini
            $subForums = SubForum::where('forum_id', $id)->get();

            if ($subForums->count() > 0) {
                // Hapus semua record anak terlebih dahulu
                foreach ($subForums as $subForum) {
                    $subForum->delete();
                }
            }

            // Hapus forum setelah record anak dihapus
            $forum->delete();
            toastr()->success('Sukses', 'Berhasil menghapus Forum');
        } else {
            toastr()->error('Gagal', 'Forum tidak ditemukan');
        }

        return redirect()->back();
    }
}
