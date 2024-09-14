@extends('layouts.admin')

@section('js')
    <script src="{{ asset('assets/admin/js/jquery.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/admin/css/select2.css') }}">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js"></script>

    <script>
        $(".theSelect").select2();
    </script>
@endsection

@section('content')
    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Link Kegiatan</h4>
            <ul class="breadcrumbs">
                <li class="nav-home">
                    <a href="/master-admin/dashboard">
                        <i class="fa-solid fa-house-chimney"></i>
                    </a>
                </li>
                <li class="separator">
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
                <li class="nav-item">
                    <a href="/master-admin/link-kegiatan">Link Kegiatan</a>
                </li>
                <li class="separator">
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
                <li class="nav-item">
                    <a href="">Edit Menu</a>
                </li>
            </ul>
        </div>
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Edit Link Kegiatan</h4>
            </div>
            <div class="card-body">
                 <form action="{{route('link-kegiatan.update', $link->id)}}" method="post" enctype="multipart/form-data"> 
                    @csrf
                    @method("PUT")
                      <div class="form-group">
                          <label for="">Masukan Nama</label>
                          <input required  value="{{$link->name}}" name="name" type="text" placeholder="Masukan Nama " class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="">Masukan Icon</label>
                        <input  name="icon" type="file" value="{{$link->icon}}" placeholder="Masukan Icon " class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Masukan Url</label>
                        <input required name="url" type="url" value="{{$link->url}}" placeholder="Masukan Url " class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Warna</label>
                        <input required name="color" type="color" value="{{$link->color}}" placeholder="Masukan color " class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-sm" type="submit">Simpan</button>
                    </div>
                 </form>
            </div>
        </div>
    </div>
@endsection
