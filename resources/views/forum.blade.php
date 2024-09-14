@extends('layouts.member')

@section('content')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <br><br><br>
    <center>
        <div class="container mt-5">
            <div class="d-flex justify-content-center mb-4">
                <button class="btn btn-primary border-0" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                    style="background: rgb(247, 161, 2)">Apa yang Anda Pikirkan?</button>
            </div>
            <div class="container mt-5">
                <form id="filter-form" method="GET" action="{{ route('forum.filter') }}">
                    @csrf
                    <div class="container">
                        <div class="row mb-4">
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="subject" placeholder="Filter by Subject"
                                    value="{{ request('subject') }}">
                            </div>
                            <div class="col-md-2">
                                <input type="date" class="form-control" name="start_date" placeholder="Start Date"
                                    value="{{ request('start_date') }}">
                            </div>
                            <div class="col-md-2">
                                <input type="date" class="form-control" name="end_date" placeholder="End Date"
                                    value="{{ request('end_date') }}">
                            </div>
                            <div class="col-md-3">
                                <select class="form-control" name="year">
                                    <option value="">-- tahun --</option>
                                    @for ($year = date('Y'); $year >= 2000; $year--)
                                        <option value="{{ $year }}"
                                            {{ old('year', request('year')) == $year ? 'selected' : '' }}>
                                            {{ $year }}
                                        </option>
                                    @endfor
                                </select>

                            </div>
                            <div class="col-md-2 ">
                                <button type="submit" style="width: 100%" class="btn btn-primary">Search</button>
                            </div>
                        </div>
                    </div>
                </form>


                <div class="container">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Subject</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Deskripsi</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>



                            @foreach ($forum as $item)
                                @if ($item->publish == 1)
                                    <tr id="forum-item-{{ $item->id }}" class="forum-item ">
                                        <td>{{ $item->subject }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->comment }}</td>
                                        <td>
                                            @if ($item->close_the_forum == 'false')
                                                <button onclick="balas('{{ $item->id }}', '{{ $item->name }}');"
                                                    class="btn btn-success btn-sm float-right">Balas</button> &nbsp;&nbsp;
                                            @else
                                                <button class="btn btn-secondary btn-sm float-right" disabled>Forum Selesai
                                                </button> &nbsp;&nbsp;
                                            @endif

                                            <a
                                                href="/forum/sub_forum/{{ $item->id }}"class="btn btn-primary btn-sm position-relative">
                                                Lihat Forum
                                                <span
                                                    class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                                    {{ $subForumCount[$item->id] ?? 0 }}
                                                    <span class="visually-hidden">count </span>
                                                </span>
                                            </a>

                                        </td>
                                    </tr>
                                    <tr id="forum-item-{{ $item->id }}" class="forum-item">
                                        <td colspan="4">
                                            <div id="form-{{ $item->id }}" class="mt-3" style="display:none;">
                                                <div class="form-group mt-2">
                                                    <label for="" class="mb-2"><b>Kepada </b></label>
                                                    <input type="text" class="form-control" placeholder="Masukan kepada"
                                                        name="kepada-{{ $item->name }}" id="kepada-{{ $item->name }}">
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-md-6">
                                                        <label for="" class="mb-2"><b>Nama</b></label>
                                                        <input type="text" placeholder="masukan nama"
                                                            class="form-control" name="input-nama-{{ $item->id }}"
                                                            id="nama-{{ $item->id }}">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="" class="mb-2"><b>Masukan Email</b></label>
                                                        <input type="text" class="form-control"
                                                            placeholder="masukan email"
                                                            name="input-email-{{ $item->id }}"
                                                            id="email-{{ $item->id }}">
                                                    </div>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <label for="" class="mb-2"><b>Masukan Deskripsi</b></label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Masukan deskripsi"
                                                        name="input-deskripsi-{{ $item->id }}"
                                                        id="deskripsi-{{ $item->id }}">
                                                </div>
                                                <button class="btn btn-primary mt-3 float-end"
                                                    onclick="kirim('{{ $item->id }}', '{{ $item->name }}')">Kirim</button>

                                                <!-- Form Balasan -->
                                                <div class="form-balas mt-3" id="balasan-{{ $item->id }}"
                                                    style="display:none;">
                                                    <div class="form-group">
                                                        <label for="balas-nama-{{ $item->id }}"
                                                            class="mb-2"><b>Nama
                                                                Anda</b></label>
                                                        <input type="text" class="form-control"
                                                            id="balas-nama-{{ $item->id }}" readonly>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <label for="balas-pesan-{{ $item->id }}"
                                                            class="mb-2"><b>Pesan
                                                                Balasan</b></label>
                                                        <textarea class="form-control" id="balas-pesan-{{ $item->id }}" placeholder="Masukkan balasan"></textarea>
                                                    </div>
                                                    <button class="btn btn-primary mt-3 float-end"
                                                        onclick="kirimBalasan('{{ $item->id }}')">Kirim
                                                        Balasan</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endif
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="container">
                    <div class="pagination">
                        @if ($isPaginated)
                            {{ $forum->links() }}
                        @endif

                    </div>
                </div>
            </div>
    </center>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/comment-post" method="post" class="mt-3" enctype="multipart/form-data">
                @csrf
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal-header">
                            <h6><b>Apa yang Anda Pikirkan??</b></h6>
                        </div>
                        <div class="container">
                            <div class="form-group mt-3">
                                <label for=""><b>Nama</b></label>
                                <input required type="text" placeholder="Nama" name="name"
                                    class="form-control mt-2">
                            </div>
                            <div class="form-group mt-3">
                                <label for=""><b>Subject</b></label>
                                <input required type="text" placeholder="subject" name="subject"
                                    class="form-control mt-2">
                            </div>
                            <div class="form-group mt-3">
                                <label for=""><b>Email</b></label>
                                <input required type="email" placeholder="email" name="email"
                                    class="form-control mt-2">
                            </div>
                            <div class="form-group mt-3">
                                <label for=""><b>Deskripsi</b></label>
                                <textarea required placeholder="deskripsi" name="comment" class="form-control mt-2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary border-0"
                            style="background: rgb(247, 161, 2)">Send</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
    <script>
        function balas(id, name) {
            // Sembunyikan semua form balas
            document.querySelectorAll('.div[id^="form-"]').forEach(function(form) {
                form.style.display = 'none';
            });

            // Tampilkan form balas yang sesuai dan setel nilai input
            var formToShow = document.getElementById('form-' + id);
            if (formToShow) {
                formToShow.style.display = 'block';

                var inputToShow = document.getElementById('nama-' + id);
                if (inputToShow) {
                    inputToShow.focus();
                }

                var kepadaInput = document.getElementById('kepada-' + name);
                if (kepadaInput) {
                    kepadaInput.value = name; // Setel nilai input
                    kepadaInput.disabled = true; // Nonaktifkan input
                }
            }
        }

        function kirim(id, name) {
            // Ambil nilai dari input
            var idAsInt = parseInt(id, 10);
            var kepadaValue = document.getElementById('kepada-' + name).value;
            var namaValue = document.getElementById('nama-' + id).value;
            var emailValue = document.getElementById('email-' + id).value;
            var deskripsiValue = document.getElementById('deskripsi-' + id).value;

            // Kirim data menggunakan AJAX
            $.ajax({
                url: "{{ route('forum.reply') }}",
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    id_forum: idAsInt,
                    kepada: kepadaValue,
                    nama: namaValue,
                    email: emailValue,
                    deskripsi: deskripsiValue
                },
                success: function(response) {
                    var formToHide = document.getElementById('form-' + id);
                    if (formToHide) {
                        formToHide.style.display = 'none';
                    }

                    // Optionally hide the response form if it was open
                    var balasanForm = document.getElementById('balasan-' + id);
                    if (balasanForm) {
                        balasanForm.style.display = 'none';
                    }

                    alert('Pesan anda berhasil di kirim :)');
                    location.reload();
                },
                error: function(xhr, status, error) {
                    alert('Terjadi kesalahan saat menambahkan data');
                    console.error(xhr.responseText);
                }
            });
        }
    </script>
@endsection
