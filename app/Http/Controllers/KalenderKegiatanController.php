<?php

namespace App\Http\Controllers;

use App\Models\KalenderKegiatan;
use App\Models\KategoriKegiatan;
use App\Models\LinkKegiatan;
use Illuminate\Http\Request;

class KalenderKegiatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function status_kalender($status)
    {
        $kegiatan = KalenderKegiatan::where('status', $status)->first();
        if ($status == 0) {
            $kegiatan->status = '1';
            $kegiatan->save();
            toastr()->success('Success', 'Kegiatan Sudah Di Laksanakan');
            return redirect()->back();
        } else {
            $kegiatan->status = '0';
            $kegiatan->save();
            toastr()->success('Success', 'Status Kegiatan Di Ubah');
            return redirect()->back();
        }
    }


    public function index()
    {
        $kegiatan = KalenderKegiatan::orderBy('created_at', 'asc')->get();
        return view('admin.kalender_kegiatan.index', compact('kegiatan'));
    }



    
    



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $link = LinkKegiatan::orderBy('created_at', 'asc')->get();
        $kategori_kegiatan = KategoriKegiatan::orderBy('created_at', 'asc')->get();
        return view('admin.kalender_kegiatan.create', compact('kategori_kegiatan', 'link'));
    }


    public function getEventDetails(Request $request)
    {
        $date = $request->input('date');
        $categoryId = $request->input('category_id');

        $events = KalenderKegiatan::whereDate('waktu_kegiatan', $date)
            ->where('kkid', $categoryId)
            ->get(['nama_kegiatan', 'deskripsi', 'dokumentasi']);

        return response()->json([
            'events' => $events,
            'totalPages' => 1, // Set this according to your pagination logic
            'currentPage' => 1 // Set this according to your pagination logic
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $links = $request->input('link');

        $kegiatan = new KalenderKegiatan();
        $kegiatan->nama_kegiatan = $request->nama_kegiatan;
        $kegiatan->deskripsi = $request->deskripsi;
        $kegiatan->waktu_kegiatan = $request->waktu_kegiatan;
        $kegiatan->data_lkid = $request->lkid;
        $kegiatan->kkid = $request->kkid;
        $kegiatan->status = '0';
        if ($request->hasFile('dokumentasi')) {
            $image = $request->dokumentasi;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('dokumentasi_kegiatan', $name);
            $kegiatan->dokumentasi = $name;
        }

        $kegiatan->link = json_encode($links);

        $kegiatan->save();

        toastr()->success('Success', 'Berhasil Menambah Kegiatan');
        return redirect('master-admin/kalender-kegiatan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KalenderKegiatan  $kalenderKegiatan
     * @return \Illuminate\Http\Response
     */
    public function show(KalenderKegiatan $kalenderKegiatan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KalenderKegiatan  $kalenderKegiatan
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kegiatan = KalenderKegiatan::findOrFail($id);

        // Retrieve the categories of activities, ordered by creation date
        $kategori_kegiatan = KategoriKegiatan::orderBy('created_at', 'asc')->get();

        // Decode the JSON-encoded data_lkid to an array
        $lkid = $kegiatan->data_lkid;
        $arrayData = json_decode($lkid, true);

        // Convert each element of the array to an integer
        $intArray = array_map('intval', $arrayData);

        // Retrieve LinkKegiatan instances ordered by creation date and filtered by the IDs from $intArray
        $link = LinkKegiatan::orderBy('created_at', 'asc')
            ->whereIn('id', $intArray)
            ->get();

        // Retrieve all LinkKegiatan instances ordered by creation date
        $mstr_link = LinkKegiatan::orderBy('created_at', 'asc')->get();

        // Convert the array of integers into a comma-separated string
        $link_array = implode(',', $intArray);
        // return $link_array;

        // return $link_array;
        return view('admin.kalender_kegiatan.edit', compact('link', 'link_array', 'mstr_link', 'kegiatan', 'kategori_kegiatan'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KalenderKegiatan  $kalenderKegiatan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $lkid_data = $request->lkid_data;
        $array_data = explode(',', $lkid_data);
        $kalenderKegiatan = KalenderKegiatan::find($id);
        $kalenderKegiatan->nama_kegiatan = $request->nama_kegiatan;
        $kalenderKegiatan->deskripsi = $request->deskripsi;
        $kalenderKegiatan->waktu_kegiatan = $request->waktu_kegiatan;
        $kalenderKegiatan->data_lkid = $array_data;
        if ($request->hasFile('dokumentasi')) {
            $image = $request->dokumentasi;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('dokumentasi_kegiatan', $name);
            $kalenderKegiatan->dokumentasi = $name;
        }
        $links = $request->input('link', []); // Default to empty array if no links are provided
        $kalenderKegiatan->link = json_encode($links); // Store as JSON string
        $kalenderKegiatan->save();
        toastr()->success('Success', 'Berhasil Edit Kegiatan');
        return redirect('master-admin/kalender-kegiatan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KalenderKegiatan  $kalenderKegiatan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kalenderKegiatan = KalenderKegiatan::find($id);
        $kalenderKegiatan->delete();
        toastr()->success('Success', 'Berhasil menghapus Kegiatan');
        return redirect()->back();
    }
}
