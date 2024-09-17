<?php

namespace App\Http\Controllers;

use App\Models\SubForum;
use App\Models\Forum;
use Illuminate\Http\Request;
use App\Rules\NoProfanity;
use Illuminate\Support\Facades\Validator;

class SubForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    
    
    

    public function status_forum($id){
        $forum = SubForum::find($id);
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
    public function index($id)
    {
        $forum = Forum::where('id', $id)->first();
        $subForum  = SubForum::where('forum_id', $forum->id)->get();
        return view('sub_forum', compact('forum','subForum'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index_master_admin($id)
    {
        $subforum = SubForum::where('forum_id',$id)->get();
        return view('admin.sub_forum.index', compact('subforum'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SubForum  $subForum
     * @return \Illuminate\Http\Response
     */
    public function show(SubForum $subForum)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SubForum  $subForum
     * @return \Illuminate\Http\Response
     */
    public function edit(SubForum $subForum)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SubForum  $subForum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SubForum $subForum)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SubForum  $subForum
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubForum $subForum, $id)
    {
        $subForum  = SubForum::find($id);
        $subForum->delete();
        toastr()->success('Sukses', 'Berhasil menghapus ');
        return redirect()->back();
    }
}
