<?php

namespace App\Http\Controllers;

use App\Models\Tb_konten;
use App\Models\Tb_menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class TbMenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menu = Tb_menu::orderBy('urutan', 'asc')->get();
        $lastItem = $menu->last();
        // return $lastItem;
        $menuCount = Tb_menu::count();
        $konten = Tb_konten::all();
        // localStorage.setItem("nama", "Agus");
        return view('admin.menu.index', compact('menu', 'lastItem','konten', 'menuCount'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $konten = Tb_konten::all();
        return view('admin.menu.create', compact('konten'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'nama' => 'required',
            'id_konten' => 'required',
        ];

        $message = [
            'required' => 'Data wajib diisi!',
        ];

        $validation = Validator::make($request->all(), $rules, $message);
        if ($validation->fails()) {
            session()->put(
                'danger',
                'Data yang anda input tidak valid, silahkan di ulang'
            );
            return back()
                ->withErrors($validation)
                ->withInput();
        }
        $menus = Tb_menu::where('id_konten', $request->id_konten)->get();
        foreach ($menus as $data) {
            $data;
        }
        $menuCount = Tb_menu::count();
        $menu = new Tb_menu();
        if ($request->id_konten != '#') {
            $menu->id_konten = $request->id_konten;
        } else {
            $menu->id_konten = 0;
        }
        $menu->nama = $request->nama;
        $menu->slug = Str::slug($request->nama);
        $menu->urutan = $menuCount + 1;
        $menu->save();

        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect()->route('menu.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tb_menu  $tb_menu
     * @return \Illuminate\Http\Response
     */
    public function show(Tb_menu $tb_menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tb_menu  $tb_menu
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu = Tb_menu::findOrFail($id);
        $konten = Tb_konten::all();
        return view('admin.menu.edit', compact('menu', 'konten'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tb_menu  $tb_menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rules = [
            'nama' => 'required',
            'id_konten' => 'required',
        ];

        $message = [
            'required' => 'Data wajib diisi!',
        ];

        $validation = Validator::make($request->all(), $rules, $message);
        if ($validation->fails()) {
            session()->put(
                'danger',
                'Data yang anda input tidak valid, silahkan di ulang'
            );
            return back()
                ->withErrors($validation)
                ->withInput();
        }
        $menus = Tb_menu::where('id_konten', $request->id_konten)->get();
        foreach ($menus as $data) {
            $data;
        }
        $menu = Tb_menu::findOrFail($id);
        if ($request->id_konten != '#') {
            $menu->id_konten = $request->id_konten;
        } else {
            $menu->id_konten = 0;
        }
        $menu->nama = $request->nama;
        $menu->slug = Str::slug($request->nama);
        $menu->save();
        session()->put('success', 'Data Berhasil diedit');
        return redirect()->route('menu.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tb_menu  $tb_menu
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $menu = Tb_menu::findOrFail($id);
        if (!Tb_menu::destroy($id)) {
            return redirect()->back();
        } else {
            $menu->delete();
            session()->put('success', 'Data Berhasil dihapus');
            return redirect()->route('menu.index');
        }
    }

    public function urutan()
    {
        $menu = Tb_menu::orderBy('urutan', 'asc')->get();
        $menuCount = Tb_menu::count();
        return view('admin.urutan.index', compact('menu', 'menuCount'));
    }

    public function urutanproses(Request $request, $id)
    {
        $rules = [
            'urutan' => 'unique:tb_menus',
        ];

        $message = [
            'unique' => 'Data Sudah ada!',
        ];

        $validation = Validator::make($request->all(), $rules, $message);
        if ($validation->fails()) {
            session()->put(
                'danger',
                'Data yang anda input tidak valid, silahkan di ulang'
            );
            return back()
                ->withErrors($validation)
                ->withInput();
        }
        $menu = Tb_menu::find($id);
        $menu->urutan = $request->urutan;
        $menu->save();
        session()->put('success', 'Data Sudah di perbarui');
        return redirect('/master-admin/urutan');
    }

    public function atas($id)
    {
        $item = Tb_menu::find($id);
    
        if (!$item) {
            return redirect()->back()->with('error', 'Item not found.');
        }
    
        // Get the item above this one
        $previousItem = Tb_menu::where('urutan', '<', $item->urutan)
                               ->orderBy('urutan', 'desc')
                               ->first();
    
        if ($previousItem) {
            // Swap the order values
            $tempOrder = $item->urutan;
            $item->urutan = $previousItem->urutan;
            $previousItem->urutan = $tempOrder;
    
            $item->save();
            $previousItem->save();
        }
    
        return redirect()->back()->with('success', 'Item moved up.');
    }
    
    public function bawah($id)
    {
        $item = Tb_menu::find($id);
    
        if (!$item) {
            return redirect()->back()->with('error', 'Item not found.');
        }
    
        // Get the item below this one
        $nextItem = Tb_menu::where('urutan', '>', $item->urutan)
                           ->orderBy('urutan', 'asc')
                           ->first();
    
        if ($nextItem) {
            // Swap the order values
            $tempOrder = $item->urutan;
            $item->urutan = $nextItem->urutan;
            $nextItem->urutan = $tempOrder;
    
            $item->save();
            $nextItem->save();
        }
    
        return redirect()->back()->with('success', 'Item moved down.');
    }
    
}