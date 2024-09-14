@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('DataTables/datatables.min.css') }}">
@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
    </script>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        < script src = "{{ asset('assets/admin/assets/js/plugin/datatables/datatables.min.js') }}" >
    </script>
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
                <form action="/master-admin/kalender-kegiatan/update/{{ $kegiatan->id }}" enctype="multipart/form-data"
                    method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">Nama Kegiatan</label>
                        <input type="text" name="nama_kegiatan" value="{{ $kegiatan->nama_kegiatan }}" required
                            class="form-control" placeholder="Masukan Nama Kegiatan">
                    </div>
                    <div class="form-group">
                        <label for="">kategori kegiatan</label>
                        <select name="kkid" class="form-control" required>
                            @foreach ($kategori_kegiatan as $item)
                                <option value="{{ $item->id }}" {{ $item->id == $kegiatan->kkid ? 'selected' : '' }}>
                                    {{ $item->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Kegiatan</label>
                        <input type="datetime-local" value="{{ $kegiatan->waktu_kegiatan }}" name="waktu_kegiatan" required
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Dokumentasi</label>
                        <input type="file" name="dokumentasi" value="{{ $kegiatan->dokumentasi }}" class="form-control"
                            placeholder="Upload Image">
                    </div>

                    <div class="container">
                        @foreach ($link as $item)
                            <span class="container"><b>{{ $item->name }}</b></span>
                            <div class="input-group mb-3 ms-2 mt-2">

                                <span class="input-group-text" id="basic-addon1">
                                    <img class="img-custom" style="width: 30px" src="{{ asset('icon/' . $item->icon) }}"
                                        alt="Instagram Icon">
                                </span>
                                <input type="text" value="{{ $item->url }}" disabled class="form-control"
                                    id="instagramInput{{ $loop->index }}" placeholder="Username" aria-label="Username"
                                    aria-describedby="basic-addon1">
                            </div>
                        @endforeach
                    </div>

                   

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">
                            Master Link
                        </button>
                    </div>

                    <input type="text" name="lkid_data" hidden value="{{$link_array}}" >

                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Pilih Link </h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                @foreach ($mstr_link as $item)
                    @php
                        $isChecked = $link->pluck('id')->contains($item->id);
                    @endphp
                    <span class="container"><b>{{ $item->name }}</b></span>
                    <div class="input-group mb-3 ms-2 mt-2">
                        <span class="input-group-text" id="basic-addon1">
                            <input class="form-check-input" type="checkbox" onclick="check(this)"
                                data-id="{{ $item->id }}" id="flexCheckDefault{{ $loop->index }}"
                                {{ $isChecked ? 'checked' : '' }}>
                        </span>
                        <span class="input-group-text" id="basic-addon1">
                            <img class="img-custom" style="width: 30px"
                                src="{{ asset('icon/' . $item->icon) }}" alt="Instagram Icon">
                        </span>
                        <input type="text" value="{{ $item->url }}" disabled class="form-control"
                            id="instagramInput{{ $loop->index }}" placeholder="Username"
                            aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                @endforeach
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Simpan</button>
            </div>
        </div>
    </div>
</div>


                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" class="form-control" required cols="30" rows="10">{{ $kegiatan->deskripsi }} </textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary float-right">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
    const checkboxes = document.querySelectorAll('#staticBackdrop .form-check-input');
    const lkidDataInput = document.querySelector('input[name="lkid_data"]');
    const lkidData = lkidDataInput.value.split(',');

    checkboxes.forEach(checkbox => {
        if (lkidData.includes(checkbox.getAttribute('data-id'))) {
            checkbox.checked = true;
        }
    });

    function updateLkidData() {
        const selectedIds = Array.from(checkboxes)
            .filter(checkbox => checkbox.checked)
            .map(checkbox => checkbox.getAttribute('data-id'));
        lkidDataInput.value = selectedIds.join(',');
    }

    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', updateLkidData);
    });

    // Initialize lkid_data with current checked items
    updateLkidData();
});
</script>

@endsection
