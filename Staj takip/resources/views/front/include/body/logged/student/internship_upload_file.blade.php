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
        <div class="container"><a class="navbar-brand logo" href="{{ route('index') }}">IKU</a><button
                data-bs-toggle="collapse" data-bs-target="#navbarNav" class="navbar-toggler"><span
                    class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="{{ route('internshipInfo') }}">Anasayfa</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('logout') }}">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page contact-page">
        <section class="portfolio-block contact">
            <div class="container">
                <div class="heading">
                    <h2>ogrencı staj belge ışlemlerı</h2>
                </div>
                <form>
                    <div class="mb-3"><label class="form-label" for="name">Staj belgesi</label><input
                            class="form-control" type="file" accept="application/pdf" required
                            name="studentUploadedFile"></div>
                    <div class="mb-3"><label class="form-label" style="font-weight: bold;">DİKKAT !</label><label
                            class="form-label" style="text-align: left;"><strong>★&nbsp;</strong>Lütfen sadece .pdf uzantılı
                            belge yüklemeye özen gösterelim aksi taktirde belgeniz onay olmayacaktır.</label><label
                            class="form-label">★ Staj için gerekli&nbsp; belgeyi doldurduktan sonra dijital kopyasını&nbsp;
                            sisteme yüklemek zorunludur. Aksi taktirde staj ile ilgili sorunlar oluşabilir. </label><label
                            class="form-label">★ Staj belgeniz Okul tarafından onaylandıktan sonra stajınız resmi olarak
                            başlamış olur.</label></div>
                    <div class="mb-3"><button class="btn btn-primary btn-lg d-block w-100" type="submit">Belgeyi
                            Gönder</button></div>
                </form>
            </div>
        </section>
    </main>
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
