@php
    use App\Models\Tb_menu;
    use App\Models\Tb_submenu;
    use App\Models\Tb_setting;
    use App\Models\Tb_visitor;
    $visitors = Tb_visitor::count();
    $setting = Tb_setting::find(1);
    $menu = Tb_menu::orderBy('urutan', 'asc')->get();
@endphp

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">


    <div class="footer-top">
        <div class="container">
            <div class="row gy-4">

                <div class="col-sm footer-info">
                    <h3 style="color: navy"> <span>{{ $setting->judul }}</span></h3>

                    <p>{!! $setting->alamat !!}</p>
                    @php
                        use App\Models\MediaSosial;
                        $media = MediaSosial::orderBy('created_at', 'asc')->get();
                    @endphp
                    <br>
                    @foreach ($media as $item)
                        <a href="{{ $item->link }}" target="_blank">
                            <img src="{{ asset('icon/' . $item->icon) }}" width="30px" alt="" srcset="">
                        </a>
                    @endforeach
                </div>

                <div class="col-sm footer-links">
                    <h4>Lokasi</h4>
                    <center>
                        <iframe style="width: 400px; height: 200px;"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.5113554464683!2d107.7501229741071!3d-6.948846068026497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68c30c7c6fe19f%3A0xd3d3febec0610024!2sBalai%20Kawasan%20Permukiman%20dan%20Perumahan!5e0!3m2!1sid!2sid!4v1725693993980!5m2!1sid!2sid"
                            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </center>
                </div>

                {{-- <div class="col-lg-2 col-6 footer-links">
                    <h4>Our Services</h4>
                    <ul>
                        <li><i class="bi bi-chevron-right"></i> <a href="#">Web Design</a></li>
                        <li><i class="bi bi-chevron-right"></i> <a href="#">Web Development</a></li>
                        <li><i class="bi bi-chevron-right"></i> <a href="#">Product Management</a></li>
                        <li><i class="bi bi-chevron-right"></i> <a href="#">Marketing</a></li>
                        <li><i class="bi bi-chevron-right"></i> <a href="#">Graphic Design</a></li>
                    </ul>
                </div> --}}

                <div class="col-sm footer-contact text-center text-md-start">
                    <h4>Kontak Kami</h4>
                    {{-- <p>
                        A108 Adam Street <br>
                        New York, NY 535022<br>
                        United States <br><br> --}}
                    <a href="/m=>kontak" class="btn  text-white btn-sm mb-3" style="background: #374774">Kontak Kami</a>
                    <br>
                    <strong>Phone:</strong> {{ $setting->call_us }}<br>
                    <strong>Email:</strong> {{ $setting->email_us }}<br>
                    </p>
                    <div class="card border-0 shadow" style="border-radius: 13px;">
                        <div class="card-body">
                            <h5>Visitor: <b> {{ number_format($visitors, 0, ',', '.') }} </b></h5>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>{{ $setting->judul }}</span></strong>. All Rights Reserved
        </div>
        {{-- <div class="credits">
            Designed by <a href="/">Belajar Link</a>
        </div> --}}
    </div>
</footer><!-- End Footer -->

<script type="text/javascript">
    document.querySelector('.refresh-captcha').addEventListener('click', function() {
        var captchaImage = document.querySelector('.captcha-img');
        var captchaSrc = captchaImage.src.split('?')[0];
        captchaImage.src = captchaSrc + '?' + Math.random();
    });
</script>

<!-- Footer Start -->
{{-- @php
      use App\Models\Tb_menu;
      use App\Models\Tb_submenu;
      use App\Models\Tb_setting;
      $setting = Tb_setting::find(1);
      $menu = Tb_menu::all();
  @endphp
  <div class="container-fluid bg-primary text-body footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5">
          <div class="row g-5">
              <div class="col-lg-4 col-md-6">
                  <h5 class="text-light mb-4">Alamat:</h5>
                  <p class="mb-2 text-light"><i class="fa fa-map-marker-alt me-3"></i>{{ $setting->alamat }}
                  </p>
                  <p class="mb-2 text-light"><i class="fa fa-phone-alt me-3"></i>{{ $setting->call_us }}</p>
                  <p class="mb-2 text-light"><i class="fa fa-envelope me-3"></i>{{ $setting->email_us }}</p>
              </div>
              <div class="col-lg-3 col-md-6">
                  <h5 class="text-light mb-4">Menu</h5>
                  <ul class="navbar-nav ms-auto">
                      @foreach ($menu as $item)
                          @if ($item->id_konten === 0)
                              <li class="nav-item dropdown">
                                  <a id="navbarDropdown" class="btn btn-link text-white dropdown-toggle" href="#"
                                      role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                                      aria-expanded="false" v-pre>
                                      {{ $item->nama }}
                                  </a>

                                  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                      @php
                                          $submenu = Tb_submenu::where('id_menu', $item->id)->get();
                                      @endphp
                                      @foreach ($submenu as $data)
                                          <a href="/s=>{{ $data->slug }}"
                                              class="dropdown-item {{ Request::is('') ? 'active text-warning' : '' }}">{{ $data->nama }}</a>
                                      @endforeach
                                  </div>
                              </li>
                          @else
                              <a href="/m=>{{ $item->slug }}"
                                  class="btn btn-link text-white {{ Request::is('/m=>saha') ? 'active text-warning' : '' }}">{{ $item->nama }}</a>
                          @endif
                      @endforeach
                  </ul>
              </div>
              <div class="col">
                  <h5 class="text-light mb-4">Social Media</h5>
                  <div class="d-flex pt-2">
                      <a class="btn btn-square btn-outline-warning rounded-circle me-1"
                          href="{{ $setting->twitter }}"><i class="fab fa-twitter"></i></a>
                      <a class="btn btn-square btn-outline-warning rounded-circle me-1"
                          href="{{ $setting->facebook }}"><i class="fab fa-facebook-f"></i></a>
                      <a class="btn btn-square btn-outline-warning rounded-circle me-1"
                          href="{{ $setting->instagram }}"><i class="fab fa-instagram"></i></a>
                      <a class="btn btn-square btn-outline-warning rounded-circle me-0"
                          href="{{ $setting->linkedin }}"><i class="fab fa-linkedin-in"></i></a>
                  </div>
              </div>
          </div>
      </div>
      <div class="container-fluid copyright">
          <div class="container">
              <div class="row">
                  <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                      &copy; <a href="#">Damkar JABAR</a>, All Right Reserved.
                  </div>
                  {{-- <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a href="https://htmlcodex.com">DAMKAR</a>
                    <br>Distributed By: <a class="border-bottom" href="https://themewagon.com"
                        target="_blank">DAMKAR</a>
                </div>
  </div>
  </div>
  </div>
  </div> --}}
<!-- Footer End -->
