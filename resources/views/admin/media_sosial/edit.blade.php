@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('DataTables/datatables.min.css') }}">
@endsection

@section('js')
    <script src="{{ asset('assets/admin/assets/js/plugin/datatables/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#galeri').DataTable();
        });
    </script>
    <script src="{{ asset('js/sweetalert2.js') }}"></script>
    <script src="{{ asset('js/delete.js') }}"></script>
@endsection

@section('content')
    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Media Sosial</h4>
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
                    <a href="/master-admin/module">Module</a>
                </li>
                <li class="separator">
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
                <li class="nav-item">
                    <a href="">Media Sosial</a>
                </li>
            </ul>

        </div>
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="card-title"> Edit Media Sosial</div>
                    </div>
                    <div class="col">
                    </div>
                </div>
            </div>
            <div class="container mt-3">
                 <form action="{{route('media-sosial.update', $media->id)}}" method="post" enctype="application/x-www-form-urlencoded">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">Media Sosial</label>
                        <input type="text" class="form-control" value="{{$media->name}}" name="name" placeholder="masukan media sosial">
                    </div>
                    <div class="form-group">
                        <label for="">Link Media</label>
                        <input type="url" class="form-control" value="{{$media->link}}" name="link" placeholder="masukan link media sosial">
                    </div>
                    <div class="form-group">
                        <label for="">Icon Media</label>
                        <input type="file" class="form-control" name="icon" placeholder="masukan icon media sosial">
                    </div>
                    <div class="form-group">
                        {{-- <label for="">Icon Media</label> --}}
                        <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
                    </div>
                 </form>
            </div>
        </div>
    </div>
@endsection
