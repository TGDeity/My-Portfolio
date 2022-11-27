@extends('layouts.front')



@section('html-class')
    lang="en"
@endsection



@section('meta')
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Portfolio</title>
    <meta name="description" content="Merhaba Ben Tolga, portfolyomu incelemek ister misin?">
    <link rel="icon" type="image/png" sizes="609x762" href="{{ asset('images/mee.png') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&amp;display=swap">
    <link rel="stylesheet" href="{{ asset('fonts/fontawesome-all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('fonts/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('fonts/fontawesome5-overrides.min.css') }}">
@endsection



@section('css')
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
@endsection

@section('content')

    <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">

        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">

            <div class="container"><a class="navbar-brand" href="#page-top">TGATECH</a><button data-bs-toggle="collapse"
                    data-bs-target="#navbarResponsive"
                    class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i
                        class="fa fa-bars"></i></button>

                <div class="collapse navbar-collapse" id="navbarResponsive">

                    <ul class="navbar-nav ms-auto">

                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                href="#portfolio">Portfolio</a></li>

                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                href="#about">About</a></li>

                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded"
                                href="#contact">Contact</a></li>

                    </ul>

                </div>

            </div>

        </nav>

        <header class="text-center text-white bg-primary masthead">

            <div class="container"> <img alt="resim yüklenemedi" title="Project" class="img-fluid d-block mx-auto mb-5"
                    src="{{ asset('images/mee.png') }}" width="188" height="235">

                <h1>Tolga Durak</h1>

                <hr class="star-light">

                <h2 class="font-weight-light mb-0">Software developer</h2>

            </div>

        </header>

        <section id="portfolio" class="portfolio">

            <div class="container">

                <h2 class="text-uppercase text-center text-secondary">Portfolio</h2>

                <hr class="star-dark mb-5">

                <div class="row">

                    @foreach ($project as $projects)
                        <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item"
                                href="#project-htm-id-{{ $projects->id }}" data-bs-toggle="modal">

                                <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">

                                    <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i
                                            class="fa fa-search-plus fa-3x"></i></div>

                                </div><img alt="resim yüklenemedi" style="height: 250px" title="{{ $projects->name }}"
                                    class="img-fluid" src="{{ $projects->project_photo_link }}">

                            </a>

                            <p
                                style="color: rgb(32, 203, 10); text-align: center;font-size: 20px;font-family: Lato, sans-serif;">

                                {{ $projects->name }}</p>

                        </div>
                    @endforeach

                </div>

            </div>

        </section>

        <section class="text-white bg-primary mb-0" id="about">

            <div class="container">

                <h2 class="text-uppercase text-center text-white">About Me</h2>

                <hr class="star-light mb-5">

                <div class="row">

                    <div class="col">

                        <p class="lead text-center">Ben Tolga, şu anda benim Portfolyomdasın!</p>

                    </div>

                </div>

                <div class="text-center mt-4"></div>

            </div>

        </section>

        <section id="contact">

            <div class="container text-center">

                <h2 class="text-uppercase text-center text-secondary mb-0">Contact Me</h2>

                <hr class="star-dark mb-5">

                <div class="row">

                    <div class="col-lg-8 mx-auto"><i class="fab fa-whatsapp" style="font-size: 71px;"></i><a target="_blank"
                            href="https://api.whatsapp.com/send/?phone=%2B905319545808&text&type=phone_number&app_absent=0"
                            style="font-size: 55px;margin-left: 20px;margin-bottom: 0px;">+90531***5808</a>

                    </div>

                </div>

            </div>

        </section>

        <footer class="text-center footer">

            <div class="container">

                <div class="row d-xxl-flex justify-content-xxl-center">

                    <div class="col-md-4 mb-5 mb-lg-0">

                        <h4 class="text-uppercase">Diğer sosyal medya hesaplarım</h4>

                        <ul class="list-inline">

                            <li class="list-inline-item"><a
                                    class="btn btn-outline-light text-center btn-social rounded-circle" role="button"
                                    target="_blank" href="https://github.com/TGDeity"><i
                                        class="fa fa-github fa-fw"></i></a></li>

                            <li class="list-inline-item"><a
                                    class="btn btn-outline-light text-center btn-social rounded-circle" role="button"
                                    href="mailto:tolga.1dr@gmail.com"><i class="fa fa-envelope-o"></i></a></li>

                            <li class="list-inline-item"><a
                                    class="btn btn-outline-light text-center btn-social rounded-circle" role="button"
                                    target="_blank" href="https://www.instagram.com/real.tgod/"><i
                                        class="fa fa-instagram "></i></a></li>

                            <li class="list-inline-item"><a
                                    class="btn btn-outline-light text-center btn-social rounded-circle" role="button"
                                    target="_blank" href="https://www.linkedin.com/in/mr-togi-2100b9257/"><i
                                        class="fa fa-linkedin fa-fw"></i></a></li>

                        </ul>

                    </div>

                </div>

            </div>

        </footer>

        <div class="text-center text-white copyright py-4">

            <div class="container"><small>Copyright ©&nbsp;TGATECH {{ date('Y') }}</small></div>

        </div>



        <div class="d-lg-none scroll-to-top position-fixed rounded"><a class="text-center d-block rounded text-white"
                href="#page-top"><i class="fa fa-chevron-up"></i></a></div>

        @foreach ($project as $projects)
            @if ($projects->project_id == 1)
                <div class="modal text-center" role="dialog" tabindex="-1" id="project-htm-id-{{ $projects->id }}">

                    <div class="modal-dialog modal-lg" role="document">

                        <div class="modal-content">

                            <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button></div>

                            <div class="modal-body">

                                <div class="container text-center">

                                    <div class="row">

                                        <div class="col-lg-8 mx-auto">

                                            <h2 class="text-uppercase text-secondary mb-0">{{ $projects->name }}</h2>

                                            <hr class="star-dark mb-5"><img alt="resim yüklenemedi"
                                                style="height: 250px; width: 550px;" title="Project"
                                                class="img-fluid mb-5" src="{{ $projects->photo_link }}">



                                        </div>

                                        @php
                                            echo $projects->text;
                                        @endphp

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer pb-5 ">

                                <a target="_blank" href="{{ $projects->download_link }}"
                                    class="btn btn-primary rounded-pill portfolio-modal-dismiss" role="button"><i
                                        class="fa fa-github"></i>&nbsp;Download

                                </a>

                            </div>



                        </div>



                    </div>

                </div>
            @else
                <div class="modal text-center" role="dialog" tabindex="-1" id="project-htm-id-{{ $projects->id }}">

                    <div class="modal-dialog modal-xl" role="document">

                        <div class="modal-content">

                            <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button></div>

                            <div class="modal-body">

                                <div class="container text-center">

                                    <div class="row">

                                        <div class="col-lg-8 mx-auto">

                                            <h2 class="text-uppercase text-secondary mb-0">{{ $projects->name }}</h2>

                                            <hr class="star-dark mb-5"><img alt="resim yüklenemedi" title="Project"
                                                class="img-fluid mb-5" src="{{ $projects->photo_link }}">

                                            @php
                                                echo $projects->text;
                                            @endphp

                                        </div>

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer pb-5 ">

                                <a target="_blank" href="{{ $projects->download_link }}"
                                    class="btn btn-primary rounded-pill portfolio-modal-dismiss" role="button"><i
                                        class="fa fa-github"></i>&nbsp;Download

                                </a>

                            </div>



                        </div>



                    </div>

                </div>
            @endif
        @endforeach

    </body>
@endsection

@section('js')
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>

    <script src="{{ asset('js/tgatechindexpage.js') }}"></script>
@endsection
