

    <!-- resources/views/components/layout.blade.php -->
    @extends('layouts.front')
    <!-- HEAD TAGS -->
    @section('meta')
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ön Lisans</title>
    @endsection
    <!-- HEAD TAGS -->
    <!-- CSS -->
    @section('css')
        <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/css/Aclonica.css') }} ">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    @endsection
    <!-- CSS -->

    <!-- BODY CONTENT -->
    @section('content')
        @include('front.includes.footer_navbar_include.navbar')

        <section class="bg-light features-icons">
            <div class="container" style="height: 1076px;">
                <h1 class="mt-4">ÖN LİSANS</h1>
                <div class="row py-5">

                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3">
                            <div class="d-flex features-icons-icon"><svg xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 -64 640 640" width="1em" height="1em" fill="currentColor"
                                    class="text-primary m-auto" style="font-size: 74px;">

                                    <path
                                        d="M400 32C426.5 32 448 53.49 448 80V336C448 362.5 426.5 384 400 384H266.7L277.3 416H352C369.7 416 384 430.3 384 448C384 465.7 369.7 480 352 480H96C78.33 480 64 465.7 64 448C64 430.3 78.33 416 96 416H170.7L181.3 384H48C21.49 384 0 362.5 0 336V80C0 53.49 21.49 32 48 32H400zM64 96V320H384V96H64zM592 32C618.5 32 640 53.49 640 80V432C640 458.5 618.5 480 592 480H528C501.5 480 480 458.5 480 432V80C480 53.49 501.5 32 528 32H592zM544 96C535.2 96 528 103.2 528 112C528 120.8 535.2 128 544 128H576C584.8 128 592 120.8 592 112C592 103.2 584.8 96 576 96H544zM544 192H576C584.8 192 592 184.8 592 176C592 167.2 584.8 160 576 160H544C535.2 160 528 167.2 528 176C528 184.8 535.2 192 544 192zM560 400C577.7 400 592 385.7 592 368C592 350.3 577.7 336 560 336C542.3 336 528 350.3 528 368C528 385.7 542.3 400 560 400z">
                                    </path>
                                </svg></div>
                            <h3 class="text-center">MESLEK YÜKSEK O.</h3>
                            <div class="row text-left px-5">
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '1']) }}>➤Bilgisayar Programcılığı</a>
                                </div>
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '2']) }}>➤Grafik Tasarım</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3"></div>
                    </div>
                    <div class="col-lg-4">
                        <div class="mx-auto features-icons-item mb-5 mb-lg-0 mb-lg-3">
                            <div class="d-flex features-icons-icon"><svg xmlns="http://www.w3.org/2000/svg"
                                    viewBox="-32 0 512 512" width="1em" height="1em" fill="currentColor"
                                    class="text-primary m-auto" style="font-size: 74px;">
                                    <path
                                        d="M448 336v-288C448 21.49 426.5 0 400 0H96C42.98 0 0 42.98 0 96v320c0 53.02 42.98 96 96 96h320c17.67 0 32-14.33 32-31.1c0-11.72-6.607-21.52-16-27.1v-81.36C441.8 362.8 448 350.2 448 336zM133.1 160.4l21.25 21.25c3.125 3.125 8.125 3.125 11.25 0s3.125-8.125 0-11.25l-26.38-26.5c10-20.75 26.25-38 46.38-49.25c-17 27.12-11 62.75 14 82.63C185.5 192 180.5 213.1 186.5 232.5c5.875 19.38 22 34.13 41.88 38.25l1.375-32.75L219.4 245.1C218.8 245.5 217.9 245.8 217.1 245.8c-1 0-2-.375-2.75-1c-.75-.875-1.25-1.875-1.25-3c0-.625 .25-1.375 .5-2L222.3 225.5l-18-3.75c-1.75-.375-3.125-2.125-3.125-4s1.375-3.5 3.125-3.875l18-3.75L213.6 195.9C212.8 194.3 213 192.1 214.4 190.9s3.5-1.5 5-.375l12 8.125L236 87.88C236.1 85.63 237.9 84 240 84s3.875 1.625 4 3.875l4.75 112.3l14.12-9.625c.625-.5 1.5-.625 2.25-.75c1.5 0 2.75 .75 3.5 2s.625 2.875-.125 4.125L260 210.1l17.1 3.75c1.75 .375 3.125 2 3.125 3.875s-1.375 3.625-3.125 4L260 225.4l8.5 14.38c.75 1.25 .875 2.75 .125 4s-2 2-3.5 2c-.75 0-1.625-.25-2.25-.625L250.3 236.5l1.375 34.25c19.88-4.125 36-18.88 41.88-38.25c6-19.38 1-40.63-13.12-55.25c25-19.88 31-55.5 14-82.63c20.25 11.25 36.38 28.5 46.38 49.25l-26.38 26.5c-3.125 3.125-3.125 8.125 0 11.25s8.125 3.125 11.25 0l21.25-21.25C349.9 170.5 352 181 352 192c0 .5-.125 1-.125 1.5l-37.13 32.5C313.1 227.6 312.1 229.8 312 232c.125 1.875 .7496 3.75 1.1 5.25C315.6 238.9 317.8 239.9 320 240c1.1 0 3.875-.7499 5.25-1.1l23.62-20.63C337.3 267 293.1 304 240 304S142.8 267 131.1 217.4l23.62 20.63C156.3 239.3 158.1 239.9 160 240c3.375 0 6.25-2.125 7.5-5.125c1.125-3.125 .25-6.75-2.25-8.875L128.1 193.5C128.1 193 128 192.5 128 192C128 181 130.1 170.5 133.1 160.4zM384 448H96c-17.67 0-32-14.33-32-32s14.33-32 32-32h288V448z">
                                    </path>
                                </svg></div>
                            <h3 class="text-center">ADALET YÜKSEK O.</h3>
                            <div class="row text-left px-5">
                                <div class="col-12 text-start"><a class="text-decoration-none text-dark"
                                        href={{ route('previewLicense', ['lisence' => '3']) }}>➤Adalet Bölümü</a></div>
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
