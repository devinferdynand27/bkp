<?php

namespace App\Http\Controllers;

use App\Models\LinkKegiatan;
use Exception;
use Illuminate\Http\Request;

class LinkKegiatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $link = LinkKegiatan::orderBy('created_at','asc')->get();
        return view('admin.mst_link.index', compact('link'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.mst_link.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new LinkKegiatan();
        $data->name = $request->name;
        $data->url = $request->url;
        $data->color = $request->color;
        if ($request->hasFile('icon')) {
            $image = $request->icon;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('icon/', $name);
            $data->icon = $name;
        }
        $data->save();
        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect('/master-admin/link-kegiatan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\LinkKegiatan  $linkKegiatan
     * @return \Illuminate\Http\Response
     */
    public function show(LinkKegiatan $linkKegiatan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\LinkKegiatan  $linkKegiatan
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $link = LinkKegiatan::find($id);
        return view('admin.mst_link.edit', compact('link'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\LinkKegiatan  $linkKegiatan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = LinkKegiatan::find($id);
        $data->name = $request->name;
        $data->url = $request->url;
        $data->color = $request->color;
        if ($request->hasFile('icon')) {
            $image = $request->icon;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('icon/', $name);
            $data->icon = $name;
        }
        $data->save();
        session()->put('success', 'Data Berhasil Edit');
        return redirect('/master-admin/link-kegiatan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\LinkKegiatan  $linkKegiatan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        try {
           $data = LinkKegiatan::find($id);
           $data->delete();
           session()->put('success', 'Data Berhasil Hapus');
           return redirect('/master-admin/link-kegiatan');
        } catch (Exception $e) {
            session()->put('warning', 'Data Tidak Bisa Hapus');
            return redirect('/master-admin/link-kegiatan');
        }
        
    }
}
