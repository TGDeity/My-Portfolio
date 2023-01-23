@if (isset($getProgramNamesID->id))
    <!-- resources/views/components/layout.blade.php -->
    @extends('layouts.front')
    <!-- HEAD TAGS -->
    @section('meta')
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>{{ $getProgramNamesID->program_name }}</title>
    @endsection
    <!-- HEAD TAGS -->
    <!-- CSS -->
    @section('css')
        <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/css/Aclonica.css') }} ">
        <link rel="stylesheet" href="{{ asset('assets/css/Navbar-Right-Links-icons.css') }}">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    @endsection
    <!-- CSS -->

    <!-- BODY CONTENT -->
    @section('content')
        @include('front.includes.footer_navbar_include.navbar')


        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12"><img class="img-fluid col-12" src={{ asset('assets/img/kultur.png') }}>
                    </div>
                </div>
            </div>
        </section>


        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row row-cols-1 mt-4" style="padding-left: 13px;">
                            <div class="col">
                                <h3 class="d-inline-flex border-bottom">{{ $getProgramNamesID->program_name }}
                                </h3>
                            </div>
                            <div class="col d-inline-flex"><a class="link-dark d-inline-flex"
                                    href="#program_purpose">➤Program
                                    Amacı</a></div>
                            <div class="col d-inline-flex"><a class="link-dark d-inline-flex"
                                    href="#program_lesson_plan">➤Program Ders Planı</a></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row row-cols-1 mt-4" style="padding-left: 13PX;">
                            <div class="col">
                                <h3 class="d-inline-flex border-bottom">İletişim</h3>
                            </div>
                            <div class="col d-inline-flex"><a class="link-dark d-inline-flex" href="#program_lesson_plan">▶️
                                    Program Başkanı:
                                    {{ $getProgramNamesID->program_leader != null ? $getProgramNamesID->program_leader : 'Bilinmiyor' }}
                                </a></div>
                            <div class="col d-inline-flex"><a class="link-dark d-inline-flex" href="#program_matris">✉
                                    {{ $getProgramNamesID->email }}</a></div>
                            <div class="col d-inline-flex"><a class="link-dark d-inline-flex" href="#program_purpose">☎
                                    {{ $getProgramNamesID->telephone }} </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section>
            <div class="container-fluid">
                <div class="row row-cols-1 mt-4">
                    <div class="col-12" style="box-shadow: 0px 0px;">
                        <div class="card" id="program_purpose"
                            style="box-shadow: 3px 15px 20px 0px var(--bs-primary);border-radius: 16px;">
                            <div class="card-body" style="transform-style: preserve-3d;">
                                <h4 class="card-title">Program Amacı</h4>
                                <p class="card-text">{{ $getProgramNamesID->program_purpose }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="row row-cols-1 mt-4">
                    <div class="col-12" style="box-shadow: 0px 0px;">
                        <div class="card" id="program_lesson_plan"
                            style="box-shadow: 3px 15px 20px 0px var(--bs-primary);border-radius: 16px;">
                            <div class="card-body" style="transform-style: preserve-3d;">
                                <h4 class="card-title">Program Ders Planı</h4>
                                <div class="row">
                                    <div class="col-sm-12"><label class="col-form-label">AKTS=Avrulabela Kredi Transfer
                                            Sistemi</label></div>
                                    <div class="col-sm-4"><label class="col-form-label">T=Teori</label></div>
                                    <div class="col-sm-4"><label class="col-form-label">U=Uygulama</label></div>
                                    <div class="col-sm-4"><label class="col-form-label">L=Laboratuar</label></div>
                                    <div class="col-sm-4"><label class="col-form-label">Z=Zorunlu</label></div>
                                    <div class="col-sm-4"><label class="col-form-label">SA=Seçmeli Alan</label></div>
                                    <div class="col"><label class="col-form-label">SAD=Seçmeli Alan Dışı</label></div>
                                </div>

                                @php
                                    $license = 1;
                                @endphp

                                @foreach ($getProgramDetails as $val)
                                    @foreach ($val as $newVal)
                                        @if ($newVal->year == '1/4')
                                            @php
                                                $license = 1;
                                                break;
                                            @endphp
                                        @else
                                            @php
                                                $license = 0;
                                                break;
                                            @endphp
                                        @endif
                                    @endforeach
                                @endforeach

                                @if ($license == 1)
                                    @include('front.preview_license.includes.onlisans')
                                @elseif ($license == 0)
                                    @include('front.preview_license.includes.lisans')
                                @endif





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
@else
    <a class="btn1" href={{ route('index') }}>Redirect</a>
    <script>
        var test = document.querySelectorAll('.btn1');
        Array.prototype.forEach.call(test, function(elements, index) {
            elements.click();
            elements.classList.add("class");
        });
    </script>
@endif
