<?php

namespace App\Http\Controllers;

use App\Models\ModuleText;
use Illuminate\Http\Request;

class ModuleTextController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $text = ModuleText::orderBy('created_at','asc')->get();
        return view('admin.text.index', compact('text'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.text.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->text_name;
        $text = new ModuleText();
        $text->judul = $request->judul;
        $text->text = $request->text_name;
        $text->save();
        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect('/master-admin/text');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ModuleText  $moduleText
     * @return \Illuminate\Http\Response
     */
    public function show(ModuleText $moduleText)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ModuleText  $moduleText
     * @return \Illuminate\Http\Response
     */
    public function edit(ModuleText $moduleText, $id)
    {
        $text = ModuleText::find($id);
        return view('admin.text.edit', compact('text'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ModuleText  $moduleText
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $text = ModuleText::find($id);
        $text->judul = $request->judul;
        $text->text = $request->text_name;
        $text->save();
        session()->put('success', 'Data Berhasil Edit');
        return redirect('/master-admin/text');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ModuleText  $moduleText
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $text = ModuleText::find($id);
        $text->delete();
        session()->put('success', 'Data Berhasil Hapus');
        return redirect('/master-admin/text');
    }
}
