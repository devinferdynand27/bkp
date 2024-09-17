<?php

namespace App\Http\Controllers;

use App\Models\Tb_konten;
use App\Models\Tb_menu;
use App\Models\Tb_submenu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class TbSubmenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Tb_menu $tb_menu)
    {
        $submenu = Tb_submenu::orderBy('urutan', 'asc')
            ->where('id_menu', $tb_menu->id)
            ->get();
        $lastItem = $submenu->last();
        
        // Dapatkan urutan terkecil dan terbesar untuk submenu tertentu
        $minUrutan = Tb_submenu::where('id_menu', $tb_menu->id)->min('urutan');
        $maxUrutan = Tb_submenu::where('id_menu', $tb_menu->id)->max('urutan');
        
        $submenuCount = Tb_submenu::where('id_menu', $tb_menu->id)->count();
        $konten = Tb_konten::all();
        $menu = Tb_menu::find($tb_menu->id);
        
        return view(
            'admin.submenu.index',
            compact('submenu', 'submenuCount', 'konten', 'menu', 'minUrutan', 'maxUrutan')
        );
    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Tb_menu $tb_menu)
    {
        $konten = Tb_konten::all();
        return view('admin.submenu.create', compact('konten', 'menu'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Tb_menu $tb_menu)
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

        $submenus = Tb_submenu::where('id_konten', $request->id_konten)->get();
        foreach ($submenus as $datam) {
            $datam;
        }
        $submenuCount = Tb_submenu::where('id_menu', $tb_menu->id)->count();
        $submenu = new Tb_submenu();
        $submenu->id_konten = $request->id_konten;
        $submenu->id_menu = $tb_menu->id;
        $submenu->nama = $request->nama;
        $submenu->slug = Str::slug($request->nama);
        $submenu->urutan = $submenuCount + 1;
        $submenu->save();
        session()->put('success', 'Data Berhasil ditambahkan');
        return redirect('/master-admin/menu/' . $tb_menu->slug . '/submenu');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tb_submenu  $tb_submenu
     * @return \Illuminate\Http\Response
     */
    public function show(Tb_submenu $tb_submenu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tb_submenu  $tb_submenu
     * @return \Illuminate\Http\Response
     */
    public function edit(Tb_menu $tb_menu, $id)
    {
        $submenu = Tb_submenu::findOrFail($id);
        $konten = Tb_konten::all();
        return view('admin.submenu.edit', compact('submenu', 'konten'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tb_submenu  $tb_submenu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tb_menu $tb_menu, $id)
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

        $submenus = Tb_submenu::where('id_konten', $request->id_konten)->get();
        foreach ($submenus as $datam) {
            $datam;
        }

        $submenu = Tb_submenu::findOrFail($id);
        $submenu->id_konten = $request->id_konten;
        $submenu->id_menu = $tb_menu->id;
        $submenu->nama = $request->nama;
        $submenu->slug = Str::slug($request->nama);
        $submenu->save();
        session()->put('success', 'Data Berhasil diedit');
        return redirect('/master-admin/menu/' . $tb_menu->slug . '/submenu');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tb_submenu  $tb_submenu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tb_menu $tb_menu, $id)
    {
        $submenu = Tb_submenu::findOrFail($id);
        $submenu->delete();
        session()->put('success', 'Data Berhasil dihapus');
        return redirect('/master-admin/menu/' . $tb_menu->slug . '/submenu');
    }

    public function atas($id)
    {
        $item = Tb_submenu::find($id);

    
        if (!$item) {
            return redirect()->back()->with('error', 'Item not found.');
        }
    
        // Get the item above this one
        $previousItem = Tb_submenu::where('urutan', '<', $item->urutan)
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
        $item = Tb_submenu::find($id);
    
        if (!$item) {
            return redirect()->back()->with('error', 'Item not found.');
        }
    
        // Get the item below this one
        $nextItem = Tb_submenu::where('urutan', '>', $item->urutan)
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