<!-- resources/views/components/layout.blade.php -->
@extends('layouts.front')
<!-- HEAD TAGS -->
@section('meta')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Akademik Paket</title>
@endsection
<!-- HEAD TAGS -->
<!-- CSS -->
@section('css')
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/Aclonica.css') }} ">
    <link rel="stylesheet" href="{{ asset('assets/css/3dButton.css') }} ">
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
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <div class="card shadow-sm my-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h1>Programlar</h1>
                                    <hr>
                                    <div class="row">
                                        <div class="col-12 mb-2">
                                            <div class="card bg-white shadow-lg">
                                                <div class="card-body">
                                                    <h3>LİSANS</h3>
                                                    <p>Ortaöğretime dayalı en az sekiz yarı yıllık (4 yıl) programı kapsayan
                                                        bir yükseköğretimdir. Lisans düzeyinde örgün, açık ve dışarıdan
                                                        (ekstern) eğitim verilmektedir.</p><a
                                                        class="btn btn3d btn-default btn-md" role="button"
                                                        href={{ route('lisans') }}>incele</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-2">
                                            <div class="card bg-white shadow-lg">
                                                <div class="card-body">
                                                    <h3>ÖN LİSANS</h3>
                                                    <p>Önlisans: Ortaöğretime dayalı dört yarı yılı kapsayan ve ara
                                                        insangücü yetiştirmeyi amaçlayan yani lisans öğretiminin ilk
                                                        kademesini oluşturan bir yükseköğretimdir. Lisans: Ortaöğretime
                                                        dayalı en az sekiz yarı yıllık (4 yıl) programı kapsayan bir
                                                        yükseköğretimdir.</p><a class="btn btn3d btn-default btn-md"
                                                        role="button" href={{ route('onLisans') }}>incele</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 mb-2">
                                            <div class="card bg-white shadow-lg">
                                                <div class="card-body">
                                                    <h3>YÜKSEK LİSANS</h3>
                                                    <p>Yüksek lisans, İngilizcesi “master“ olan bir lisans öğretimine dayalı
                                                        eğitim-öğretim ve araştırmanın sonuçlarını ortaya koymayı amaçlayan
                                                        bir yükseköğretimdir. Yüksek lisans eğitimi, kişinin eğitim aldığı
                                                        branşta uzmanlaşması ve bu durumu bilimsel bir tezle ispat etmesiyle
                                                        tamamlanır. Yüksek lisans eğitimde kişi genel araştırma teknikleri
                                                        hakkında bilgi sahibi olur. Araştırmacı çalışma yaptığı disipline
                                                        daha metodolojik bakarken, temel çalışma alanını belirler. </p><a
                                                        class="btn btn3d btn-default btn-md" role="button"
                                                        href={{ route('yuksekLisans') }}>incele</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <div class="card shadow-sm my-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h1>Akademik Paket</h1>
                                    <hr>
                                    <div class="col">
                                        <p>Üniversitemizde öğrenci merkezli eğitim-öğretim sistemi uygulanmaktadır. Bu
                                            sistemde öğrencilerin derslerinde başarılı olmak için yaptıkları tüm çalışmalar
                                            (derslerin teorik ve uygulama saatleri, derslere devamları, laboratuvar, proje
                                            çalışmaları, ödevler, sınavlar ve yaptıkları bitirme projeleri vb. için
                                            harcadıkları süreler gibi) değerlendirilerek kredilendirilmektedir. Tüm bölüm/
                                            programlarımız sahip oldukları alt yapı ve donanımları ile öğrencilerimize
                                            alanları ile ilgili uygulama yapabilme olanağı sunmaktadır. Öğrencilerimizin
                                            öğrenimlerini başarı ile tamamlamaları için yaptıkları çalışmaları yansıtan ve
                                            Avrupa Kredi Transfer ve Biriktirme Sistemi (AKTS) olarak adlandırılan kredi
                                            sistemi, ulusal ve uluslararası alanda tanınırlığı arttırmakta ve
                                            öğrencilerimizin akademik yaşantıları boyunca biriktirdikleri krediler yurt
                                            içinde ve yurt dışındaki diğer üniversitelerde kabul edilmelerini
                                            kolaylaştırılmaktadır. Bu sistem aynı zamanda ulusal/uluslararası iş alanlarında
                                            da tercih edilme nedeni olmaktadır.</p>
                                        <p> Bu sistem ile üniversitemiz öğrencileri, bir akademik yılda Ne
                                            öğreneceklerini,Nasıl öğreneceklerini, Nerede uygulama yapacaklarını, derslerin
                                            Kimin tarafından verileceğini, ders kazanımlarını mesleklerinde Ne şekilde
                                            kullanacaklarını ve mezun olduktan sonraki yetkinliklerini açık olarak
                                            görebilmektedirler. Sonuçta, öğrencilerimiz program ve öğrenim çıktılarını
                                            inceleyerek mezuniyet sonrasındaki kazanımları hakkında öğrenimlerinin başında
                                            bilgi sahibi olmaktadırlar.</p>
                                    </div>
                                </div>
                            </div>
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
