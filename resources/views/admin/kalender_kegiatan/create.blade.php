@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('DataTables/datatables.min.css') }}">
@endsection
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>
@section('js')
    <script src="{{ asset('assets/admin/assets/js/plugin/datatables/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#galeri').DataTable();
        });
        
    </script>
       <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
       <script>
           CKEDITOR.replace('ckeditor', {
               filebrowserUploadUrl: "{{ route('upload', ['_token' => csrf_token()]) }}",
               filebrowserUploadMethod: 'form'
           });
       </script>
    <script src="{{ asset('js/sweetalert2.js') }}"></script>
    <script src="{{ asset('js/delete.js') }}"></script>
@endsection
<style>
    .container {
        display: flex;
        align-items: center;
        margin: 10px;
    }

    .form-check-label {
        color: gray;
        margin-left: 8px;
        /* Menambahkan jarak antara checkbox dan teks */
    }

    .form-check-label b {
        color: grey;
    }
</style>

@section('content')
    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Kalender Kegiatan</h4>
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
                    <a href="">Kalender Kegiatan</a>
                </li>
            </ul>
        </div>
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="card-title">Tambah Kalender Kegiatan</div>
                    </div>
                    <div class="col"></div>
                    <div class="col"></div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('kalender-kegiatan.store') }}" enctype="multipart/form-data" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">Nama Kegiatan</label>
                        <input type="text" name="nama_kegiatan" required class="form-control"
                            placeholder="Masukan Nama Kegiatan">
                    </div>
                    <div class="form-group">
                        <label for="">kategori kegiatan</label>
                        <select name="kkid" class="form-control" required>
                            @foreach ($kategori_kegiatan as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Kegiatan</label>
                        <input type="datetime-local" name="waktu_kegiatan" required class="form-control">
                    </div>
                    <input type="text" n id="checkedItemsInput" hidden name="lkid" value='[]'>
                    <div class="form-group">
                        <label for="">Dokumentasi</label>
                        <input type="file" name="dokumentasi" required class="form-control" placeholder="Upload Image">
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">
                            Master Link
                        </button>
                    </div>
                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" class="form-control" id="ckeditor" required cols="30" rows="10"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary float-right">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Pilih Link </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    @foreach ($link as $item)
                        <span class="container"><b>{{ $item->name }}</b></span>
                        <div class="input-group mb-3 ms-2 mt-2">
                            <span class="input-group-text" id="basic-addon1">
                                <input class="form-check-input" type="checkbox" onclick="check(this)"
                                    data-id="{{ $item->id }}" id="flexCheckDefault{{ $loop->index }}">
                            </span>
                            <span class="input-group-text" id="basic-addon1">
                                <img class="img-custom" style="width: 30px" src="{{ asset('icon/' . $item->icon) }}"
                                    alt="Instagram Icon">
                            </span>
                            <input type="text" value="{{ $item->url }}" disabled class="form-control"
                                id="instagramInput{{ $loop->index }}" placeholder="Username" aria-label="Username"
                                aria-describedby="basic-addon1">
                        </div>
                    @endforeach
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Simpan</button>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script>
            let lkid = [];

            function check(checkboxElement) {
                const id = checkboxElement.getAttribute('data-id');

                if (checkboxElement.checked) {
                    // Add the ID to the array if checked
                    if (!lkid.includes(id)) {
                        lkid.push(id);
                    }
                } else {
                    // Remove the ID from the array if unchecked
                    lkid = lkid.filter(itemId => itemId !== id);
                }

                document.getElementById('checkedItemsInput').value = JSON.stringify(lkid);
            }
        </script>
    @endsection
