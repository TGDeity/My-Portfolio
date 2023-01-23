    <!-- resources/views/components/layout.blade.php -->
    @extends('layouts.front')
    <!-- HEAD TAGS -->
    @section('meta')
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Lisans</title>
    @endsection
    <!-- HEAD TAGS -->
    <!-- CSS -->
    @section('css')
        <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/css/Aclonica.css') }} ">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    @endsection
    <!-- CSS -->

    <!-- BODY CONTENT -->
    @section('content')
        @include('front.includes.footer_navbar_include.navbar')
        <section class="bg-light features-icons">
            <div class="container" style="height: 1076px;">
                <h1 class="mt-4">LİSANS</h1>
                <div class="row py-5">
                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3">
                            <div class="d-flex features-icons-icon"><i class="icon-wrench text-primary m-auto"
                                    style="font-size: 74px;"></i></div>
                            <h3 class="text-center">Mühendislik Fakültesi</h3>
                            <div class="row text-left px-5">
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '4']) }}>➤Bilgisayar Mühendisliği</a>
                                </div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '5']) }}>➤Elektronik Elektronik
                                        Müh.</a></div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '6']) }}>➤İnşaat Mühendisliği</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3">
                            <div class="d-flex features-icons-icon"><svg class="bi bi-journal-bookmark text-primary m-auto"
                                    xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                                    viewBox="0 0 16 16" style="font-size: 74px;">
                                    <path fill-rule="evenodd"
                                        d="M6 8V1h1v6.117L8.743 6.07a.5.5 0 0 1 .514 0L11 7.117V1h1v7a.5.5 0 0 1-.757.429L9 7.083 6.757 8.43A.5.5 0 0 1 6 8z">
                                    </path>
                                    <path
                                        d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z">
                                    </path>
                                    <path
                                        d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z">
                                    </path>
                                </svg>
                            </div>
                            <h3 class="text-center">Fen Edebiyat Fakültesi</h3>
                            <div class="row text-left px-5">
                                <div class="col-12 text-start"><a class="text-decoration-none text-muted">➤Matematik ve
                                        Bilgisayar</a></div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-muted">➤Fizik</a></div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-muted">➤Psikoloji</a>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3">
                            <div class="d-flex features-icons-icon"><i class="la la-building-o text-primary m-auto"
                                    style="font-size: 74px;"></i></div>
                            <h3 class="text-center">Mimarlık Fakültesi&nbsp; &nbsp; &nbsp;&nbsp;</h3>
                            <div class="row text-left px-5">
                                <div class="col-12 text-start"><a
                                        class="text-decoration-none text-muted">➤Mimarlık(Türkçe)</a></div>
                                <div class="col-12 text-start"><a
                                        class="text-decoration-none text-muted">➤Mimarlık(İngilizce)</a></div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-muted">➤İç Mimarlık ve
                                        Çevre Tasarımı</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @include('front.includes.footer_navbar_include.footer')
    @endsection
    <!-- BODY CONTENT -->

    <!-- JS -->
    @section('js')
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    @endsection
    <!-- JS -->
