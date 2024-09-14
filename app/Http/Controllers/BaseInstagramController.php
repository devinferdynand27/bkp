<?php

namespace App\Http\Controllers;

use App\Models\BaseInstagram;
use Illuminate\Http\Request;

class BaseInstagramController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $base = BaseInstagram::find(1);
        return view('admin.base_instagram.index' , compact('base'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $base = BaseInstagram::find(1);
        $base->name = $request->name;
        $base->token = $request->token;
        $base->save();
        toastr()->success('Success', 'berhasil Mengubah data instagram');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BaseInstagram  $baseInstagram
     * @return \Illuminate\Http\Response
     */
    public function show(BaseInstagram $baseInstagram)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BaseInstagram  $baseInstagram
     * @return \Illuminate\Http\Response
     */
    public function edit(BaseInstagram $baseInstagram)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BaseInstagram  $baseInstagram
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BaseInstagram $baseInstagram)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BaseInstagram  $baseInstagram
     * @return \Illuminate\Http\Response
     */
    public function destroy(BaseInstagram $baseInstagram)
    {
        //
    }
}
