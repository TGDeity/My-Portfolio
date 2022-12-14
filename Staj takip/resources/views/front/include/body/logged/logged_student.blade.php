<!-- resources/views/components/layout.blade.php -->
@extends('layouts.front')
<!-- HEAD TAGS -->
@section('meta')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Staj Takip Sistemi</title>
@endsection
<!-- HEAD TAGS -->
<!-- CSS -->
@section('css')
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
@endsection
<!-- CSS -->

<!-- BODY CONTENT -->
@section('content')
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand logo" data-bss-hover-animate="tada"
                href="{{ route('index') }}">IKU</a><button data-bs-toggle="collapse" class="navbar-toggler"
                data-bs-target="#navbarNav"><span class="visually-hidden">Toggle navigation</span><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('internshipInfo') }}">Staj</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('logout') }}">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page lanidng-page"></main>
    <section class="portfolio-block website gradient">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-12 col-lg-5 offset-lg-1 text">
                    <div class="card">
                        <div class="card-body text-end">
                            <h4 class="card-title" style="color: rgb(0,0,0);">Aktif Staj??m</h4>
                            <ul class="list-group">
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">OKUL</span><span
                                        class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">T.C. KULTUR UNIVERSITY</span></li>
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">STAJ YER??</span><span
                                        class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">PERPA A.S ELEKTRIK HIZMETLERI</span>
                                </li>
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">????RETMEN</span><span
                                        class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">TOLGA DURAK</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-5 offset-lg-1 text">
                    <div class="card">
                        <div class="card-body text-end">
                            <h4 class="card-title" style="color: rgb(0,0,0);">Staj bilgilerim</h4>
                            <ul class="list-group">
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">B??l??m</span><span
                                        class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">Bilgisayar M??hendisli??i</span></li>
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">Aktif D??nem
                                        G??n??</span><span class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">40. G??n</span></li>
                                <li class="list-group-item text-start"><span class="text-start"
                                        style="font-size: 18px;font-weight: bold;text-align: left;">Ba??ar??yla Tamamlanan
                                        G??n/Tamamlanmas?? gereken G??n</span><span
                                        class="text-start d-xxl-flex justify-content-xxl-start"
                                        style="padding-left: 0px;margin-left: 24px;">35 G??n /40</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="page-footer" style="background: transparent;margin-top: -2px;">
        <div class="container">
            <div class="links"><a style="margin-top: 30px;">Developed by TGATECH</a></div><a
                data-bss-hover-animate="bounce" href="#"><i class="icon ion-social-github"
                    style="font-size: 25px;"></i></a>
            <div class="social-icons"></div>
        </div>
    </footer>
@endsection
<!-- BODY CONTENT -->

<!-- JS -->
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('assets/js/student_index_init.js') }}"></script>
@endsection
<!-- JS -->
