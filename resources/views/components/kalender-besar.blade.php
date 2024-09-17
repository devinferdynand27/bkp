<div>
    @php
        use App\Models\KalenderKegiatan;
        use App\Models\LinkKegiatan;
        use App\Models\KategoriKegiatan;

        // Retrieve years for the dropdown
        $year_all = KalenderKegiatan::orderBy('created_at', 'asc')
            ->get()
            ->pluck('waktu_kegiatan')
            ->map(function ($date) {
                return date('Y', strtotime($date));
            })
            ->unique()
            ->values();

        // Retrieve categories for the dropdown
        $kategori = KategoriKegiatan::orderBy('created_at', 'asc')->get();

        // Get selected year and category from the request
        $selected_year = request()->get('year');
        $selected_kategori = request()->get('kkid');

        // Build query with filters
        $kalender = KalenderKegiatan::query()
            ->when($selected_year, function ($query, $year) {
                return $query->whereYear('waktu_kegiatan', $year);
            })
            ->when($selected_kategori, function ($query, $kategori) {
                return $query->where('kkid', $kategori);
            })
            ->orderBy('created_at', 'asc')
            ->get();
    @endphp

    <section id="recent-blog-posts" class="recent-blog-posts">
        <div class="" data-aos="fade-up">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-8">
                            {{-- Filter Form --}}
                            <form action="{{ url()->current() }}" method="GET">
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <div style="display: flex">
                                                <!-- Category Dropdown -->
                                                <select name="kkid" id="kkid" class="form-select">
                                                    <option value="">-- pilih kategori --</option>
                                                    @foreach ($kategori as $item)
                                                        <option value="{{ $item->id }}"
                                                            {{ $item->id == $selected_kategori ? 'selected' : '' }}>
                                                            {{ $item->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                &nbsp;
                                                <!-- Year Dropdown -->
                                                <select name="year" class="form-select" style="width: 100%">
                                                    <option value="">-- pilih tahun --</option>
                                                    @foreach ($year_all as $item)
                                                        <option value="{{ $item }}"
                                                            {{ $item == $selected_year ? 'selected' : '' }}>
                                                            {{ $item }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td><button type="submit" class="btn text-white btn-sm"
                                                style="background: #374774">Cari</button></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th rowspan="2" class="text-center">Nama Kegiatan</th>
                                    <th colspan="12" class="text-center">Pelaksanaan</th>
                                    <th rowspan="2" class="text-center">Tanggal</th>
                                    <th rowspan="2" class="text-center">Waktu</th>
                                    <th rowspan="2" class="text-center">Link</th>
                                    <th rowspan="2" class="text-center">Status</th>
                                </tr>
                                <tr>
                                    <th>Jan</th>
                                    <th>Feb</th>
                                    <th>Mar</th>
                                    <th>Apr</th>
                                    <th>Mei</th>
                                    <th>Jun</th>
                                    <th>Jul</th>
                                    <th>Ags</th>
                                    <th>Sep</th>
                                    <th>Okt</th>
                                    <th>Nov</th>
                                    <th>Des</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($kalender as $item)
                                    @php
                                        $bulan = \Carbon\Carbon::parse($item->waktu_kegiatan)->format('n'); // Mendapatkan bulan (1-12)
                                        $tanggal = \Carbon\Carbon::parse($item->waktu_kegiatan)->format('d'); // Mendapatkan tanggal (01-31)
                                    @endphp
                                    <tr>
                                        <td>
                                            <div style="cursor: pointer"
                                                onclick="modal_show({{ $item->id }}, 'tanggal')">
                                                {{ $item->nama_kegiatan }}
                                            </div>
                                        </td>
                                        @for ($i = 1; $i <= 12; $i++)
                                            <td class="text-center">
                                                @if ($i == $bulan)
                                                    <div class="select-date btn text-white btn-sm"
                                                        style="cursor: pointer;background:#F7CB4F"
                                                        onclick="modal_show({{ $item->id }}, 'tanggal')">
                                                        {{ $tanggal }}
                                                    </div>
                                                @endif
                                            </td>
                                        @endfor
                                        <td>{{ \Carbon\Carbon::parse($item->waktu_kegiatan)->format('Y-m-d') }}</td>
                                        <td>{{ \Carbon\Carbon::parse($item->waktu_kegiatan)->format('H:i') }}</td>
                                        <td>
                                            <button type="button"
                                                onclick="modal_show({{ $item->id }}, 'link'); return false;"
                                                class="btn text-white btn-sm" style="background: #374774">
                                                Link
                                                <i class="bi bi-link-45deg"></i>
                                            </button>
                                        </td>
                                        <td>
                                            <div
                                                class="{{ $item->status == 0 ? 'btn btn-secondary btn-sm' : 'btn btn-primary btn-sm' }}">
                                                {{ $item->status == 1 ? 'Sudah Terlaksana' : 'Belum Terlaksana' }}
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Modals -->
    @foreach ($kalender as $item)
        @php
            $data_lkid = $item->data_lkid;
            $arrayData = json_decode($data_lkid, true);
            $intArray = array_map('intval', $arrayData);
            $link = LinkKegiatan::orderBy('created_at', 'asc')->whereIn('id', $arrayData)->get();
        @endphp

        <!-- Modal for Tanggal -->
        <div id="modal{{ $item->id }}_tanggal" class="custom-modal">
            <div class="custom-modal-content shadow">
                <span class="close-modal">&times;</span>

                <h6>{{ $item->nama_kegiatan }}</h6>
                <div style="display: flex;">
                    @foreach ($link as $linkItem)
                        <a href="{{ $linkItem->url }}" target="_blank" class="btn btn-sm text-white"
                            style="background: {{ $linkItem->color }}">
                            <img style="width: 20px" src="{{ asset('icon/' . $linkItem->icon) }}" alt="">
                            &nbsp;
                            {{ $linkItem->name }}
                        </a> &nbsp;
                    @endforeach
                </div>
                <img style="width: 100%" src="{{ asset('dokumentasi_kegiatan/' . $item->dokumentasi) }}"
                    alt=""><br><b></b><br>
                <span style="color: gray" class="mt-2">{{ $item->waktu_kegiatan }}</span>
                <p class="mt-3">{{ $item->deskripsi }}</p>

            </div>
        </div>

        <!-- Modal for Link -->
        <div id="modal{{ $item->id }}_link" class="custom-modal">
            <div class="custom-modal-content shadow">
                <span class="close-modal">&times;</span>
                <h6>{{ $item->nama_kegiatan }}</h6>
                <img style="width: 100%" src="{{ asset('dokumentasi_kegiatan/' . $item->dokumentasi) }}"
                    alt=""><br><b></b><br>
                <span style="color: gray" class="mt-2">{{ $item->waktu_kegiatan }}</span>
                <div id="link-container{{ $item->id }}" style="margin-top: 20px;">
                    @foreach ($link as $linkItem)
                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                            <input type="text" value="{{ $linkItem->url }}" readonly class="form-control"
                                id="linkInput{{ $linkItem->id }}" style="flex: 1; margin-right: 10px;">
                            <button class="btn btn-primary btn-sm copy-btn"
                                data-clipboard-target="#linkInput{{ $linkItem->id }}">
                                Copy
                            </button>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    @endforeach
</div>

<style>
    /* The Modal Background */
    .custom-modal {
        display: none;
        position: fixed;
        z-index: 1050;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
    }

    /* Modal Content Box */
    .custom-modal-content {
        background-color: white;
        margin: 0 auto;
        padding: 20px;
        width: 80%;
        max-width: 500px;
        max-height: 80vh;
        overflow-y: auto;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        position: relative;
        top: 10%;
        animation-name: slideDown;
        animation-duration: 0.5s;
        animation-timing-function: ease-out;
        animation-fill-mode: forwards;
    }

    /* The Close Button */
    .close-modal {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
    }

    .close-modal:hover,
    .close-modal:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    /* Slide Down Animation */
    @keyframes slideDown {
        from {
            top: -100%;
        }

        to {
            top: 10%;
        }
    }
</style>

<script>
    function modal_show(id, type) {
        var modal;
        if (type === 'tanggal') {
            modal = document.getElementById("modal" + id + "_tanggal");
        } else if (type === 'link') {
            modal = document.getElementById("modal" + id + "_link");
        }

        if (modal) {
            var closeModal = modal.querySelector('.close-modal');

            // Display the modal
            modal.style.display = "flex";

            // Close the modal when clicking on the close button
            closeModal.onclick = function() {
                modal.style.display = "none";
            }

            // Close the modal when clicking outside the modal content
            window.onclick = function(event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            }
        }
    }

    // Add event listeners for copy buttons
    document.querySelectorAll('.copy-btn').forEach(button => {
        button.addEventListener('click', function() {
            // Get the target selector from the data-clipboard-target attribute
            const targetSelector = this.getAttribute('data-clipboard-target');
            const targetInput = document.querySelector(targetSelector);

            // Select the input field's content
            if (targetInput) {
                targetInput.select();
                document.execCommand('copy');

                // Provide user feedback
                this.textContent = 'Copied!';
                setTimeout(() => {
                    this.textContent = 'Copy Link';
                }, 2000);
            }
        });
    });
</script>
