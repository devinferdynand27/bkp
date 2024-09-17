@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('DataTables/datatables.min.css') }}">
@endsection

@section('js')
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace('ckeditor', {
            filebrowserUploadUrl: "{{ route('upload', ['_token' => csrf_token()]) }}",
            filebrowserUploadMethod: 'form'
        });
    </script>
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
            <h4 class="page-title">Text</h4>
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
                    <a href="">Text</a>
                </li>
            </ul>

        </div>
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="card-title">Edit Data Text</div>
                    </div>
                    <div class="col">
                    </div>
                    <div class="col">
                        {{-- <a href="{{route('text.create')}}" class="btn btn-primary">Tambah Text</a> --}}
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('text.update', $text->id) }}" enctype="multipart/form-data" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="forum-group">
                        <label for=""><b>Judul</b></label>
                        <input type="text" required name="judul" value="{{ $text->judul }}"
                            placeholder="Masukan Judul" class="form-control mt-2">
                    </div>
                    <div class="forum-group mt-2">
                        <label for=""><b>Text</b></label>
                        <textarea name="text_name" required id="ckeditor" class="form-control" cols="30" rows="10">{!! $text->text !!}</textarea>
                        {{-- <inut type="text" name="text_name" id="ckeditor" placeholder="Masukan Judul" class="form-control mt-2"> --}}
                    </div>
                    <div class="forum-group mt-2">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
