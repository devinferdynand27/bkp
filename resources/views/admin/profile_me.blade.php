@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('DataTables/datatables.min.css') }}">
@endsection

@section('js')
    <script src="{{ asset('assets/admin/assets/js/plugin/datatables/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#artikel').DataTable();
        });
    </script>
    <script src="{{ asset('js/sweetalert2.js') }}"></script>
    <script src="{{ asset('js/delete.js') }}"></script>
@endsection

@section('ckeditor')
    {{-- <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace('ckeditor', {
            filebrowserUploadUrl: "{{ route('upload', ['_token' => csrf_token()]) }}",
            filebrowserUploadMethod: 'form'
        });
    </script> --}}
@endsection

@section('content')
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Profile Setting</h4>
            <ul class="breadcrumbs">
                <li class="nav-home">
                    <a href="/master-admin/dashboard">
                        <i class="fa-solid fa-house-chimney"></i>
                    </a>
                </li>
                <li class="separator">
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
                @if (Auth::user()->id == 1)
                    <li class="separator">
                        <i class="fa-solid fa-chevron-right"></i>
                    </li>
                @endif
                <li class="nav-item">
                    <a href="">Profile Setting</a>
                </li>
            </ul>

        </div>
        <div class="card">
            <div class="container">
                 <form action="/master-admin/profile-me-setting-post" method="post">
                    @csrf
                    <div class="form-group mt-3">
                        <label for="">Masukan Password lama </label>
                        <input type="text" required placeholder="masukan password lama  " required  class="form-control" name="password_old" id="">
                    </div>
                    <div class="form-group mt-3">
                        <label for="">Masukan Email Baru </label>
                        <input type="email" required placeholder="masukan email baru" required class="form-control" name="email_new" id="">
                    </div>
                    <div class="form-group ">
                        <label for="">Masukan Password Baru </label>
                        <input type="text" required placeholder="masukan password baru" required class="form-control" name="password_new" id="">
                    </div>
                    <div class="fotm-group">
                        <div class="container">
                            <button class="btn btn-primary btn-sm" type="submit">Simpan</button>
                        </div>
                    </div><br><br>
                 </form>
            </div>
        </div>
    </div>
@endsection
