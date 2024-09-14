<?php

namespace App\Http\Controllers;

use App\Models\Layanan;
use Illuminate\Http\Request;

class LayananController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $layanan = Layanan::orderBy('created_at','asc')->get();
        return view('admin.layanan.index', compact('layanan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.layanan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new Layanan();
        $data->name = $request->name;
        $data->link = $request->link;
        if ($request->hasFile('icon')) {
            $image = $request->icon;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('icon/', $name);
            $data->icon = $name;
        }
        $data->save();
        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect('/master-admin/layanan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Layanan  $layanan
     * @return \Illuminate\Http\Response
     */
    public function show(Layanan $layanan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Layanan  $layanan
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $layanan = Layanan::find($id);
        return view('admin.layanan.edit', compact('layanan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Layanan  $layanan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $data = Layanan::find($id);
        $data->name = $request->name;
        $data->link = $request->link;
        if ($request->hasFile('icon')) {
            $image = $request->icon;
            $name = rand(1000, 9999) . $image->getClientOriginalName();
            $image->move('icon/', $name);
            $data->icon = $name;
        }
        $data->save();
        session()->put('success', 'Data Berhasil Di Edit');
        return redirect('/master-admin/layanan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Layanan  $layanan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Layanan::find($id);
        $data->delete();
        session()->put('success', 'Data Berhasil hapus');
        return redirect('/master-admin/layanan');
    }
}
