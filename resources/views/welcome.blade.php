@extends('layouts.member')

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
    </script>
    <!-- Make sure you put this AFTER Leaflet's CSS -->
    <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
        integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
        crossorigin=""></script>
    <script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>
    <!-- Select2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.2/dist/css/select2.min.css" rel="stylesheet" />
@endsection


@section('content')
    @php
        use Illuminate\Support\Facades\Http;
        use App\Models\Tb_tentang;
        use App\Models\Tb_keuntungan;
        use App\Models\Tb_pertanyan;
        use App\Models\Produk;
        use App\Models\Tb_artikel;
        use App\Models\Tb_slide;
        use App\Models\Tb_galeri;
        use App\Models\Tb_video;
        use Illuminate\Support\Carbon;
        use App\Models\Tb_setting;
        use App\Models\KalenderKegiatan;

        $kalender = KalenderKegiatan::orderBy('created_at', 'asc')->get();
        if (isset($request->year)) {
            $year = $request->input('year');
            $kalender = KalenderKegiatan::whereYear('waktu_kegiatan', $year)->get();
        }
        $setting = Tb_setting::find(1);
        $tentang = Tb_tentang::find(1);
        $keuntungan = Tb_keuntungan::find(1);
        $pertanyaan = Tb_pertanyan::all();
        $artikel = Tb_artikel::orderBy('created_at', 'desc')->paginate(8);
        $berita = Tb_artikel::orderBy('created_at', 'desc')->where('id_kategori_konten', 3)->paginate(3);
        $slide = Tb_slide::orderBy('created_at', 'desc')->get();
        $galeri = Tb_galeri::orderBy('created_at', 'desc')->get();
        $video = Tb_video::orderBy('created_at', 'desc')->paginate(7);
    @endphp
    <!-- ======= Hero Section ======= -->
    <br><br><br>

    <style>
        .card-artikel {
            display: flex;
            align-items: center;
            background-color: white;
            padding: 10px;
            width: 100%;
            border-radius: 13px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        .card-artikel:hover {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .list-tile__title {
            margin: 0;
            font-size: 1.1em;
            color: #333;
            font-weight: bold;
        }

        .list-tile__subtitle {
            margin: 5px 0 0;
            font-size: 0.8em;
            color: #666;
        }

        .carousel-item {
            position: relative;
        }

        .carousel-item .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            /* Change the color and opacity as needed */
            z-index: 1;
        }

        .carousel-caption {
            z-index: 2;
            /* Ensure the caption is above the overlay */
        }

        .card-menu {
            background: white;
            padding: 15px;
            border-radius: 50px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.057);
        }

        .category-container {
            padding: 30px;
            width: 100%;
            overflow-x: auto;
        }

        .category-container::-webkit-scrollbar {
            display: none;
        }

        .category-logos {
            display: inline-flex;
        }

        .category {
            margin-right: 80px;
        }

        .image-category {
            height: 40px;
        }

        .scrollable-container {
            overflow-x: auto;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
            /* For smooth scrolling on iOS */
            scrollbar-width: none;
            /* Hide scrollbar in Firefox */
        }

        .scrollable-container::-webkit-scrollbar {
            display: none;
            /* Hide scrollbar in Chrome, Safari, and Opera */
        }

        .scrollable-container img {
            display: inline-block;
            width: 300px;
            margin-right: 10px;
            /* Optional spacing between images */
        }

        .scroll-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(255, 255, 255, 0.7);
            border: none;
            padding: 10px;
            cursor: pointer;
            z-index: 10;
        }

        .scroll-btn.left {
            left: 10px;
        }

        .scroll-btn.right {
            right: 10px;
        }

        .gradient-btn {
            background: linear-gradient(#F7CB4F, #374774);
            border: none;
            color: white;
            padding: 10px 20px;
            width: 100%;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition: background 0.3s ease-in-out;
            border-radius: 25px;
        }

        .gradient-btn:hover {
            background: linear-gradient(#F7CB4F, #374774);
        }

        .whatsapp-float {
            position: fixed;
            bottom: 80px;
            /* Adjust as needed */
            right: 20px;
            /* Adjust as needed */
            z-index: 100;
        }

        .whatsapp-icon {
            background-color: #25D366;
            /* Green color for WhatsApp */
            width: 60px;
            /* Set width and height to the same value */
            height: 60px;
            /* Set width and height to the same value */
            border-radius: 50%;
            /* Circular background */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .whatsapp-icon i {
            color: white;
            /* Color of the WhatsApp icon */
            font-size: 24px;
            /* Adjust icon size as needed */
        }

        /* The Modal Background */
        .custom-modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1000;
            /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            /* Remove the background overlay */
            background-color: transparent;
        }

        /* Modal Content Box */
        .custom-modal-content {
            background-color: white;
            margin: 0 auto;
            /* Center horizontally */
            padding: 20px;
            width: 80%;
            /* Could be more or less, depending on screen size */
            max-width: 500px;
            border-radius: 10px;
            /* Remove box-shadow */
            box-shadow: none;
            position: relative;
            top: 0;
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
                top: 0;
            }
        }



        /* The Close Button */
        .close-modal {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .modal {
            display: flex;
            /* Display modal in center */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
            /* Ensures modal is on top of other content */
        }

        /* Modal Content */
        .modal-content {
            background-color: white;
            border-radius: 15px;
            width: 80%;
            max-width: 500px;
            padding: 20px;
            text-align: center;
            position: relative;
        }

        /* Close Button */
        .close {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 24px;
            cursor: pointer;
        }
    </style>

    @php
        use Illuminate\Support\Str;
    @endphp
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
    </script>

    <div id="adModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <h2>Kegiatan!</h2>
            <p>{{ $iklan->nama_kegiatan }}</p>
            <img src="{{ asset('dokumentasi_kegiatan/' . $iklan->dokumentasi) }}" alt="Advertisement" class="img-fluid"
                style="border-radius: 10px; width: 100%;">
            <div style="margin-top: 20px;">
                <button class="btn btn-secondary" style="width: 45%" id="closeModalFooter">Close</button>
                <a href="/kegiatan/{{ $iklan->nama_kegiatan }}/{{ $iklan->id }}" class="btn text-white"
                    style="width: 45%; background: #374774">Learn More</a>


            </div>
        </div>
    </div>
    <script>
        // Show modal after 1 second
        window.onload = function() {
            setTimeout(function() {
                document.getElementById('adModal').style.display = 'flex';
            }, 1000); // Adjust the delay time (in milliseconds) as needed
        };

        // Close the modal when the user clicks on the close button
        var closeModal = document.getElementById('closeModal');
        var closeModalFooter = document.getElementById('closeModalFooter');
        closeModal.onclick = function() {
            document.getElementById('adModal').style.display = 'none';
            document.body.style.overflow = 'auto'; // Re-enable scrolling
        }
        closeModalFooter.onclick = function() {
            document.getElementById('adModal').style.display = 'none';
            document.body.style.overflow = 'auto'; // Re-enable scrolling
        }

        // Close the modal when clicking outside the modal content
        window.onclick = function(event) {
            if (event.target == document.getElementById('adModal')) {
                document.getElementById('adModal').style.display = 'none';
                document.body.style.overflow = 'auto'; // Re-enable scrolling
            }
        }
    </script>

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            @foreach ($slide as $key => $item)
                <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                    <img src="{{ $item->gambar() }}" class="" style="width: 100%; height: 400px; object-fit: cover;"
                        alt="...">
                    <div class="overlay"></div>
                    <div class="carousel-caption d-none d-md-block">
                        <h3>{{ $item->deskripsi }}</h3>
                    </div>
                </div>
            @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <main id="main">





        <div>
            @if ($layanan)
                <h5 class="text-center text--primary mb-4 mt-4">Layanan yang banyak diakses</h5>
                <center style=" background: rgba(245, 245, 245, 0.583);">
                    <div class="container">
                        <div class="category-container">
                            <div class="category-logos">
                                @foreach ($layanan as $item)
                                    <a class="category" href="{{ $item->link }}" target="_blank"
                                        style="cursor: pointer"><img src="{{ asset('icon/' . $item->icon) }}" width="50"
                                            height="50" style="object-fit: contain; ">
                                        <br />
                                        <span
                                            style="text-decoration: none; font-size: 13px; color: rgb(99, 98, 98)">{{ $item->name }}</span>
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </center>
            @endif
            <div class="container py-3">
                <div class="container">
                    <h5 class="text-center text--primary mb-4 mt-5">Konten Instagram</h5>
                    <div class="row">
                        @foreach ($posts as $index => $post)
                            <div class="col-md-4 mb-3 post-item {{ $index >= 3 ? 'd-none' : '' }}">
                                <div class="card shadow border-0" style="border-radius: 20px; height: 530px; ">
                                    <div class="card-body">
                                        @if ($post['media_type'] === 'IMAGE')
                                            <img src="{{ $post['media_url'] }}" class="card-img-top"
                                                style="border-radius: 10px; height: 300px; object-fit: cover">
                                        @elseif ($post['media_type'] === 'VIDEO')
                                            <video controls style="width: 100%; height: 300px;">
                                                <source src="{{ $post['media_url'] }}" type="video/mp4">
                                            </video>
                                        @elseif ($post['media_type'] === 'CAROUSEL_ALBUM')
                                            <div id="carousel-{{ $post['id'] }}" class="carousel slide">
                                                <div class="carousel-inner">
                                                    @foreach ($post['carousel_media'] as $index => $media)
                                                        <div class="carousel-item {{ $index === 0 ? 'active' : '' }}">
                                                            @if ($media['media_type'] === 'IMAGE')
                                                                <img src="{{ $media['media_url'] }}" class="d-block w-100"
                                                                    style="border-radius: 10px; height: 300px; object-fit: cover;">
                                                            @elseif ($media['media_type'] === 'VIDEO')
                                                                <video controls class="d-block w-100"
                                                                    style="border-radius: 10px; height: 300px;">
                                                                    <source src="{{ $media['media_url'] }}"
                                                                        type="video/mp4">
                                                                </video>
                                                            @endif
                                                        </div>
                                                    @endforeach
                                                    <a class="carousel-control-prev" href="#carousel-{{ $post['id'] }}"
                                                        role="button" data-slide="prev">
                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                    <a class="carousel-control-next" href="#carousel-{{ $post['id'] }}"
                                                        role="button" data-slide="next">
                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">
                                            {{ isset($post['caption']) ? Str::limit($post['caption'], 100) : ' ' }}.
                                        </p>
                                        <a href="{{ $post['permalink'] }}" target="_blank"
                                            class="btn btn-primary gradient-btn">Show Content</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                    <a href="/instagram" class="btn btn-primary gradient-btn floar-right mt-5" style="width: 150px">
                        Show More</a>
                    <a href="https://www.instagram.com/{{ $instagram->name }}/" target="_blank"
                        class="btn btn-primary gradient-btn floar-right mt-5" style="width: 200px">
                        Show Instagram</a>


                </div>
            </div>
        </div>

        <style>
            td {
                font-weight: 400;
                font-size: 14px;
            }

            .select-date {
                background: rgb(255, 191, 0);
                border-radius: 30px;
                text-align: center;
                padding: 10px;
                font-weight: bold;
            }

            .sudah-terlaksana {
                border-radius: 5px;
                color: white;
                background: rgb(18, 44, 147);
                padding: 10px;
            }
        </style>

        <div class="container">
            @include('components.kalender-besar')
        </div>
        <div class="container">
            {{-- @include('components.text') --}}
        </div>



        <a href="https://wa.me/{{ $setting->call_us }}" class="whatsapp-float" target="_blank">
            <div class="whatsapp-icon">
                <i class="bi bi-whatsapp text-center"></i>
            </div>
        </a>

        <script>
            document.querySelectorAll('.copy-btn').forEach(button => {
                button.addEventListener('click', function() {
                    // Get the selector from the data-clipboard-target attribute
                    const targetSelector = this.getAttribute('data-clipboard-target');
                    const targetInput = document.querySelector(targetSelector);

                    // Select the input field's content
                    if (targetInput) {
                        targetInput.select();
                        document.execCommand('copy');

                        // Provide user feedback
                        this.textContent = 'Copied!';
                        setTimeout(() => {
                            this.textContent = 'Copy';
                        }, 2000);
                    }
                });
            });

            // This function will attach event listeners to each button with a dynamic ID
            document.querySelectorAll('[id^="openModalBtn"]').forEach(function(btn) {
                var id = btn.id.replace('openModalBtn', '');
                var modal = document.getElementById("customModal" + id);
                var closeModal = modal.querySelector('.close-modal');

                btn.onclick = function() {
                    modal.style.display = "flex";
                }

                closeModal.onclick = function() {
                    modal.style.display = "none";
                }

                window.onclick = function(event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            });
        </script>


        <script>
            document.addEventListener("DOMContentLoaded", function() {
                // Simpan posisi scroll saat klik pagination
                var savedScrollPosition = localStorage.getItem('scrollPosition');
                if (savedScrollPosition) {
                    window.scrollTo(0, savedScrollPosition);
                    localStorage.removeItem('scrollPosition');
                }

                // Tangkap klik pada link pagination
                document.querySelectorAll('.pagination a').forEach(function(link) {
                    link.addEventListener('click', function(event) {
                        // Simpan posisi scroll saat klik pagination
                        localStorage.setItem('scrollPosition', window.scrollY);
                    });
                });
            });
        </script>

        @if ($check_scrol == true)
            <script>
                document.addEventListener("DOMContentLoaded", function() {
                    var savedScrollPosition = localStorage.getItem('scrollPosition');
                    if (savedScrollPosition) {
                        window.scrollTo(0, savedScrollPosition);
                        localStorage.removeItem('scrollPosition');
                    }
                });

                window.addEventListener('beforeunload', function() {
                    localStorage.setItem('scrollPosition', window.scrollY);
                });
            </script>
        @endif
        <script>
            function scrollGalleryLeft() {
                document.getElementById('galleryContainer').scrollBy({
                    left: -300, // Adjust this value based on your image width and scroll behavior
                    behavior: 'smooth'
                });
            }

            function scrollGalleryRight() {
                document.getElementById('galleryContainer').scrollBy({
                    left: 300, // Adjust this value based on your image width and scroll behavior
                    behavior: 'smooth'
                });
            }
        </script>




    </main><!-- End #main -->
@endsection
