<?php

namespace App\Http\Controllers;

use App\Models\MediaSosial;
use Illuminate\Http\Request;

class MediaSosialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $media = MediaSosial::orderBy('created_at','asc')->get();
        return view('admin.media_sosial.index', compact('media'));   
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.media_sosial.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store( Request $request)
    {
        $data = new MediaSosial();
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
        return redirect('/master-admin/media-sosial');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MediaSosial  $mediaSosial
     * @return \Illuminate\Http\Response
     */
    public function show(MediaSosial $mediaSosial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MediaSosial  $mediaSosial
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $media = MediaSosial::find($id);
        return view('admin.media_sosial.edit', compact('media'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MediaSosial  $mediaSosial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = MediaSosial::find($id);
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
        return redirect('/master-admin/media-sosial');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MediaSosial  $mediaSosial
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = MediaSosial::find($id);
        $data->delete();
        session()->put('success', 'Data Berhasil hapus');
        return redirect('/master-admin/media-sosial');
    }
}
