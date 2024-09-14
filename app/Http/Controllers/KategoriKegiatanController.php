<?php

namespace App\Http\Controllers;

use App\Models\KategoriKegiatan;
use Exception;
use Illuminate\Http\Request;
use PDO;

class KategoriKegiatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kegiatan = KategoriKegiatan::orderBy('created_at', 'asc')->get();
        // return $kegiatan
        return view('admin.kategori_kegiatan.index', compact('kegiatan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.kategori_kegiatan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data =  new KategoriKegiatan();
        $data->name = $request->name;
        $data->save();
        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect('/master-admin/kategori-kegiatan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KategoriKegiatan  $kategoriKegiatan
     * @return \Illuminate\Http\Response
     */
    public function show(KategoriKegiatan $kategoriKegiatan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KategoriKegiatan  $kategoriKegiatan
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kategori = KategoriKegiatan::find($id);
        return view('admin.kategori_kegiatan.edit', compact('kategori'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KategoriKegiatan  $kategoriKegiatan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = KategoriKegiatan::find($id);
        $data->name = $request->name;
        $data->save();
        session()->put('success', 'Data Berhasil Rubah');
        return redirect('/master-admin/kategori-kegiatan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KategoriKegiatan  $kategoriKegiatan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = KategoriKegiatan::find($id);
        try {
            $data->delete();
            session()->put('success', 'Data Berhasil Hapus');
            return redirect('/master-admin/kategori-kegiatan');
        } catch (Exception $e) {
            session()->put('warning', 'Tidak Dapat Menghapus Data');
            return redirect('/master-admin/kategori-kegiatan');
        }
    }
}
