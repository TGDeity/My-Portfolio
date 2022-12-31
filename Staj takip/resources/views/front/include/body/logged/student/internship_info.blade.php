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
                    <li class="nav-item"><a class="nav-link" href="{{ route('internshipUploadFile') }}">Belge yükle</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('logout') }}">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page projets-page">
        <section class="portfolio-block project-no-images">
            <div class="container">
                <div class="heading">
                    <h2>Staj defterim</h2>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image">
                            <h3>1.Gün</h3>
                            <h4>Başarıyla tamamlandı</h4><a class="btn btn-primary btn-lg text-lowercase" role="button"
                                href="#myModal" data-bs-toggle="modal"
                                style="background: transparent;color: var(--bs-blue);">İncele</a>
                            <div class="modal fade" role="dialog" tabindex="-1" id="myModal">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4>Modal Title</h4><button type="button" class="btn-close"
                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="text-center text-muted">Description </p>
                                        </div>
                                        <div class="modal-footer"><button class="btn btn-light" type="button"
                                                data-bs-dismiss="modal">Close</button><button class="btn btn-primary"
                                                type="button">Save</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image">
                            <h3>2.Gün</h3>
                            <h4>Tamamlanamadı</h4><a class="btn btn-primary btn-lg text-lowercase" role="button"
                                href="#myModal" data-bs-toggle="modal"
                                style="background: transparent;color: var(--bs-blue);">İncele</a>
                            <div class="tags"></div>
                            <div class="modal fade" role="dialog" tabindex="-1" id="myModal-2">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4>Modal Title</h4><button type="button" class="btn-close"
                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="text-center text-muted">Description </p>
                                        </div>
                                        <div class="modal-footer"><button class="btn btn-light" type="button"
                                                data-bs-dismiss="modal">Close</button><button class="btn btn-primary"
                                                type="button">Save</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image">
                            <h3>3.Gün</h3>
                            <h4>Gün raporu girilmesi bekleniyor.</h4><a class="btn btn-primary btn-lg text-lowercase"
                                role="button" href="#myModal" data-bs-toggle="modal"
                                style="background: transparent;color: var(--bs-blue);">İncele</a>
                            <div class="tags"></div>
                            <div class="modal fade" role="dialog" tabindex="-1" id="myModal-3">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4>Modal Title</h4><button type="button" class="btn-close"
                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="text-center text-muted">Description </p>
                                        </div>
                                        <div class="modal-footer"><button class="btn btn-light" type="button"
                                                data-bs-dismiss="modal">Close</button><button class="btn btn-primary"
                                                type="button">Save</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="portfolio-block project-no-images">
            <div class="container">
                <div class="heading">
                    <h2>PUANTAJ Formu</h2>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image">
                            <h3>Puantaj durumu</h3>
                            <h4>Staj defterinin iş veren tarafından öğrenci durumunu puanladığı puantaj formu.</h4><button
                                class="btn btn-primary" type="button"
                                style="background: transparent;color: var(--bs-btn-bg);">incele</button>
                        </div>
                    </div>
                    <div class="col">
                        <div>
                            <div class="modal fade" role="dialog" tabindex="-1" id="myModal-1">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4>Modal Title</h4><button type="button" class="btn-close"
                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="text-center text-muted">Description </p>
                                        </div>
                                        <div class="modal-footer"><button class="btn btn-light" type="button"
                                                data-bs-dismiss="modal">Close</button><button class="btn btn-primary"
                                                type="button">Save</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
