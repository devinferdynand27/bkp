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
                        <label for="">Kategori Kegiatan</label>
                        <select name="kkid" class="form-control" required>
                            @foreach ($kategori_kegiatan as $item)
                                <option value="{{ $item->id }}" {{ $item->id == $kegiatan->kkid ? 'selected' : '' }}>
                                    {{ $item->name }}
                                </option>
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

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">
                            Master Link
                        </button>
                    </div>

                    <input type="text" name="lkid_data" hidden id="lkid_data" value="{{ $link_array }}">

                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Pilih Link</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <select name="data_lkid" id="data_lkid" class="form-control">
                                        @foreach ($mstr_link as $item)
                                            <option value="{{ $item->id }}" data-name="{{ $item->name }}"
                                                data-icon="{{ asset('icon/' . $item->icon) }}">
                                                <img src="{{ asset('icon/' . $item->icon) }}" alt="">
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <br>
                                    <table class="table table-bordered table-hover">
                                        <thead class="table-light">
                                            <tr>
                                                <th scope="col" style="width: 10%">Aksi</th>
                                                <th scope="col" style="width: 20%">Icon</th>
                                                <th scope="col" style="width: 70%">Nama</th>
                                            </tr>
                                        </thead>
                                        <tbody id="links_table_body">
                                            @foreach ($link as $item)
                                                @php
                                                    $isChecked = $link->pluck('id')->contains($item->id);
                                                @endphp
                                                <tr data-id="{{ $item->id }}">
                                                    <td>
                                                        <button type="button" class="btn btn-danger btn-sm"
                                                            onclick="removeLink({{ $item->id }}, this)">Hapus</button>
                                                    </td>
                                                    <td class="text-center">
                                                        <img class="img-thumbnail" style="width: 30px; height: 30px;"
                                                            src="{{ asset('icon/' . $item->icon) }}" alt="Icon">
                                                    </td>
                                                    <td>
                                                        {{ $item->name }}
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Simpan</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" class="form-control" required cols="30" rows="10">{{ $kegiatan->deskripsi }}</textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary float-right">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            function updateLinksData() {
                const tableBody = document.querySelector('#links_table_body');
                const links = Array.from(tableBody.querySelectorAll('tr')).map(row => {
                    return row.getAttribute('data-id');
                });
                document.querySelector('#lkid_data').value = links.join(',');
            }

            window.removeLink = function(id, buttonElement) {
                const row = buttonElement.closest('tr');
                if (row) {
                    row.remove();
                    updateLinksData();
                }
            }

            window.addLink = function(id, name, icon) {
                const tableBody = document.querySelector('#links_table_body');
                const existingRow = tableBody.querySelector(`tr[data-id="${id}"]`);
                if (!existingRow) {
                    const row = document.createElement('tr');
                    row.setAttribute('data-id', id);
                    row.innerHTML = `
                <td>
                    <button type="button" class="btn btn-danger btn-sm" onclick="removeLink(${id}, this)">Hapus</button>
                </td>
                <td class="text-center">
                    <img class="img-thumbnail" style="width: 30px; height: 30px;" src="${icon}" alt="Icon">
                </td>
                <td>
                    ${name}
                </td>
            `;
                    tableBody.appendChild(row);
                    updateLinksData();
                }
            }

            document.querySelector('#data_lkid').addEventListener('change', function() {
                const selectedOption = this.options[this.selectedIndex];
                const id = selectedOption.value;
                const name = selectedOption.getAttribute('data-name');
                const icon = selectedOption.getAttribute('data-icon');
                addLink(id, name, icon);
            });
        });
    </script>
@endsection
