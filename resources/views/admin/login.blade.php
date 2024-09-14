<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Admin</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    {{-- <link href="{{ asset('images/icon-belajar.png') }}" rel="icon"> --}}

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

    <!-- Fonts and icons -->
    <script src="{{ asset('assets/admin/js/plugin/webfont/webfont.min.js') }}"></script>
    <script>
        WebFont.load({
                    google: {
                        "families": ["Lato:300,400,700,900"]
                    },
                    custom: {
                        "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands",
                            "simple-line-icons"
                        ],
                        urls: ['
                            assets / admin / css / fonts.min.css ']
                        },
                        active: function() {
                            sessionStorage.fonts = true;
                        }
                    });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="{{ asset('assets/admin/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/admin/css/atlantis.min.css') }}">

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link rel="stylesheet" href="{{ asset('assets/admin/css/demo.css') }}">
</head>

<style>
    body {
        background: white;
        /* background: linear-gradient(to right, rgb(0, 0, 119), #0004df); */
    }
</style>

<body><br><br><br>

    <center>
        {{-- <img src="{{ asset('images/LOGO-DAMKAR.png') }}" width="100" alt="Logo Damkar"> --}}
        <br><br>


        <div class="container">
            {{-- <img src="{{ asset('images/LOGO-DAMKAR.png') }}" width="100" alt="Logo Damkar"> --}}
          

            <div class="card mx-auto mt-4" style="width: 100%; max-width: 400px;">
                <div class="card-body p-4">
                    <h4 class="card-title mb-4 mt-3">Login Admin BKPP</h4>
                    <img src="{{ asset('images/logo/logo.png') }}" style="width:100%" alt="">
                    <hr>
                    <form action="/master-admin/login/proses" method="POST">
                        @csrf
                        <div class="form-group mb-3">
                            <input type="text" id="email" name="email" value="{{ old('email') }}"
                                   class="form-control @error('email') is-invalid @enderror" placeholder="Enter your email">
                            @error('email')
                                <div class="invalid-feedback d-block">
                                    <strong>{{ $message }}</strong>
                                </div>
                            @enderror
                        </div>
                        <div class="form-group mb-4">
                            <input type="password" id="password" name="password"
                                   class="form-control @error('password') is-invalid @enderror" placeholder="Enter your password">
                            @error('password')
                                <div class="invalid-feedback d-block">
                                    <strong>{{ $message }}</strong>
                                </div>
                            @enderror
                        </div>
                        <p>Silahkan login untuk keamanan bersama</p>
                        <div class="d-grid">
                            <button type="submit" style="width: 95%" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
            
            
            

            {{-- <div class="card rounded shadow col-sm-5 mt-3">
                <div class="card-body">
                    <h3 class="mt-2">Login Admin</h3>
                    <form class="pt-3" action="/admin/login/proses" method="POST">
                        @csrf
                        <div class="form-group">
                            <div class="input-icon">
                                <span class="input-icon-addon">
                                    <i class="fa fa-user"></i>
                                </span>
                                <input type="text" name="email" value="{{ old('email') }}"
                                    class="form-control @error('email') is-invalid @enderror" placeholder="Email">
                            </div>
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <span class="input-icon-addon">
                                    <i class="fa-solid fa-lock"></i>
                                </span>
                                <input type="password" name="password"
                                    class="form-control @error('password') is-invalid @enderror"
                                    id="exampleInputPassword1" placeholder="Password" />
                            </div>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <button class="btn btn-primary
    font-weight-medium" type="submit"
                                style="width: 95%;">Login</button>

                        </div>
                        <div
                            class="
                      my-2
                      d-flex
                      justify-content-between
                      align-items-center
                    ">
                        </div>
                    </form><br>
                </div>
            </div> --}}
        </div>
    </center>
    <!--   Core JS Files   -->
    <script src="{{ asset('assets/admin/js/core/jquery.3.2.1.min.js') }}"></script>
    <script src="{{ asset('assets/admin/js/core/popper.min.js') }}"></script>
    <script src="{{ asset('assets/admin/js/core/bootstrap.min.js') }}"></script>

    <!-- jQuery UI -->
    <script src="{{ asset('assets/admin/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/admin/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js') }}"></script>

    <!-- jQuery Scrollbar -->
    <script src="{{ asset('assets/admin/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js') }}"></script>


    <!-- Chart JS -->
    <script src="{{ asset('assets/admin/js/plugin/chart.js/chart.min.js') }}"></script>

    <!-- jQuery Sparkline -->
    <script src="{{ asset('assets/admin/js/plugin/jquery.sparkline/jquery.sparkline.min.js') }}"></script>

    <!-- Chart Circle -->
    <script src="{{ asset('assets/admin/js/plugin/chart-circle/circles.min.js') }}"></script>

    <!-- Datatables -->
    <script src="{{ asset('assets/admin/js/plugin/datatables/datatables.min.js') }}"></script>

    <!-- Bootstrap Notify -->
    {{-- <script src="{{ asset('assets/admin/js/plugin/bootstrap-notify/bootstrap-notify.min.js') }}"></script> --}}

    <!-- jQuery Vector Maps -->
    <script src="{{ asset('assets/admin/js/plugin/jqvmap/jquery.vmap.min.js') }}"></script>
    <script src="{{ asset('assets/admin/js/plugin/jqvmap/maps/jquery.vmap.world.js') }}"></script>

    <!-- Sweet Alert -->
    <script src="{{ asset('assets/admin/js/plugin/sweetalert/sweetalert.min.js') }}"></script>

    <!-- Atlantis JS -->
    <script src="{{ asset('assets/admin/js/atlantis.min.js') }}"></script>

    <!-- Atlantis DEMO methods, don't include it in your project! -->
    <script src="{{ asset('assets/admin/js/setting-demo.js') }}"></script>
    <script src="{{ asset('assets/admin/js/demo.js') }}"></script>
</body>

</html>
