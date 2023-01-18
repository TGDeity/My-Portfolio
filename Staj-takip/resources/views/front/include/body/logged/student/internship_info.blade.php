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
                    @php
                        $days = 0;
                        $modalTablIndex = -2;
                    @endphp
                    @foreach ($internships as $getVal)
                        @php
                            $days++;
                            $modalTablIndex++;
                            $daysCounterForDataTarget = '#myModal' . $days;
                            $daysCounterForModelId = 'myModal' . $days;
                            
                        @endphp

                        {{-- <div class="container"> {{ $getVal->description_stu }}</div> --}}
                        <div class="col-md-6 col-lg-4">
                            <div class="project-card-no-image">
                                <h3>{{ $days }}.Gün</h3>
                                @if ($getVal->description_stu != null && $getVal->description_emp != null)
                                    <h4>Başarıyla tamamlandı</h4>
                                @else
                                    <h4>Başarıyla tamamlanamadı</h4>
                                @endif

                                @if ($getVal->description_stu == null)
                                    <a class="btn btn-primary btn-lg text-lowercase" role="button"
                                        data-bs-target={{ $daysCounterForDataTarget }} data-bs-toggle="modal"
                                        style="background: transparent;color: var(--bs-blue);">İncele
                                    </a>
                                    <div class="modal fade" role="dialog" tabindex={{ $modalTablIndex }}
                                        id={{ $daysCounterForModelId }}>
                                        <div class="modal-dialog modal-xl modal-body-xl" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4>{{ $days }}.Gün</h4><button type="button" class="btn-close"
                                                        data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="container-fluid ">
                                                        <div class="row ">
                                                            <div class="col-12">

                                                                <form action="" class="form">
                                                                    <div class="form-group">
                                                                        <label for="description">Bugün neler yaptın?</label>
                                                                        <textarea required type="text" class="form-control" id="decsription" name="description" rows="10" cols="10"
                                                                            placeholder="Bugün yaptıklarım..."></textarea>
                                                                        <small id="descriptionHelp"
                                                                            class="form-text text-muted">Lütfen gün içinde
                                                                            yaptığınız işlemleri kutucuğa yazınız.</small>

                                                                    </div>
                                                                    <div class="row mt-5">
                                                                        <div class="col-sm-7 col-md-10">
                                                                            <div class="form-check">
                                                                                <input required class="form-check-input"
                                                                                    type="checkbox" value="onay"
                                                                                    id="onay">
                                                                                <label class="form-check-label"
                                                                                    for="onay">
                                                                                    Yukarıda yazıklarımı onaylıyorum.
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-5 col-md-2"><button
                                                                                class="btn btn-primary"
                                                                                type="submit">Gönder</button></div>

                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-light" type="button"
                                                            data-bs-dismiss="modal">Kapat</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @else
                                    {{-- eğer input girişi sağlanmamışsa student yada emp tarafından calısacak. --}}
                                    <a class="btn btn-primary btn-lg text-lowercase" role="button"
                                        data-bs-target={{ $daysCounterForDataTarget }} data-bs-toggle="modal"
                                        style="background: transparent;color: var(--bs-blue);">İncele
                                    </a>
                                    <div class="modal fade" role="dialog" tabindex={{ $modalTablIndex }}
                                        id={{ $daysCounterForModelId }}>
                                        <div class="modal-dialog modal-xl modal-body-xl" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4>{{ $days }}.Gün</h4>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                    </button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="container-fluid ">
                                                        <div class="row mb-5">
                                                            <div class="col-12">
                                                                @if ($getVal->description_stu == null)
                                                                    <form action="" class="form">
                                                                        <div class="form-group">
                                                                            <label for="description">Bugün neler
                                                                                yaptın?</label>
                                                                            <textarea required type="text" class="form-control" id="decsription" name="description" rows="10"
                                                                                cols="10" placeholder="Bugün yaptıklarım..."></textarea>
                                                                            <small id="descriptionHelp"
                                                                                class="form-text text-muted">Lütfen gün
                                                                                içinde
                                                                                yaptığınız işlemleri kutucuğa
                                                                                yazınız.</small>

                                                                        </div>
                                                                        <div class="row mt-5">
                                                                            <div class="col-sm-7 col-md-10">
                                                                                <div class="form-check">
                                                                                    <input required
                                                                                        class="form-check-input"
                                                                                        type="checkbox" value="onay"
                                                                                        id="onay">
                                                                                    <label class="form-check-label"
                                                                                        for="onay">
                                                                                        Yukarıda yazıklarımı onaylıyorum.
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-5 col-md-2"><button
                                                                                    class="btn btn-primary"
                                                                                    type="submit">Gönder</button></div>

                                                                        </div>
                                                                    </form>
                                                                @else
                                                                    <div class="row">
                                                                        <div class="col-lg-6 col-sm-12 border">
                                                                            <label
                                                                                class="col-12 mt-1 fw-bold text-center">ÖĞRENCİ
                                                                                NOTU</label>
                                                                            <hr>
                                                                            <div class="col-12 pt-2 m-2">
                                                                                {{ $getVal->description_stu }}</div>
                                                                        </div>

                                                                        <div class="col-lg-6 col-sm-12 border">
                                                                            <label
                                                                                class="col-12 mt-1 fw-bold text-center ">İŞVEREN
                                                                                NOTU
                                                                            </label>
                                                                            <hr>
                                                                            <div class="col-12 pt-2 m-2">
                                                                                {{ $getVal->description_emp == null ? 'Not girişi bekleniyor' : $getVal->description_emp }}
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                @endif
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-light" type="button"
                                                            data-bs-dismiss="modal">Kapat</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif

                            </div>
                        </div>
                    @endforeach
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
