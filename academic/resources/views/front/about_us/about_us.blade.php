

    <!-- resources/views/components/layout.blade.php -->
    @extends('layouts.front')
    <!-- HEAD TAGS -->
    @section('meta')
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Hakkımızda</title>
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


        <div class="container-fluid" style="margin-top: 69px;">
            <div class="card">
                <div class="card-body">
                    <h1>İKÜ HAKKINDA</h1>
                    <div class="row">
                        <div class="col"><p>Ataköy Yerleşkesi,E5 Karayolu Üzeri<br>Bakırköy 34156 / İstanbul<br>+ 90 212 498414<br><br>
        İstanbul Kültür Üniversitesi Ataköy, Şirinevler ve İncirli Kampüsü olarak üç kampüste faaliyet göstermektedir. Ataköy Kampüsü'nde Eğitim Fakültesi, Fen-Edebiyat Fakültesi, Mühendislik Fakültesi, Mimarlık Fakültesi, İktisadi ve İdari Bilimler Fakültesi, Sanat ve Tasarım Fakültesi, Şirinevler Kampüsü'nde ise Hukuk Fakültesi, Adalet Meslek Yüksek Okulu ve İngilizce hazırlık birimleri, kız ve erkek yurtları, İncirli Kampüsü'nde ise İşletmecilik Meslek Yüksek Okulu, Teknik Bilimler Meslek Yüksek Okulu bulunmaktadır. İki kampüs arasındaki mesafe, yürüyerek 15 dakika sürmekte ve Üç Kampüs arasında her 15 dakikada bir karşılıklı otobüs seferleri vardır.<br><br>
    
    Kampüsler içinde öğrenci yemek ve diğer ihtiyaçlarını karşılayabilecek imkan sağlanmıştır.
    Sabah ve Akşam Kadıköy ve Bostancı'dan gelecek öğrenciler için Bakırköy Deniz Otobüsü iskelesine otobüs seferleri düzenlenmektedir.
    Her üç kampüs de otobüs ve Metro duraklarına yürüyerek 5 dakika mesafede olup, İstanbul'un bütün semtlerine kolaylıkla ulaşmak mümkündür.
    </p></div>
                    </div>
                </div>
            </div>
        </div>
        @include('front.includes.footer_navbar_include.footer')
    @endsection
    <!-- BODY CONTENT -->

    <!-- JS -->
    @section('js')
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    @endsection
    <!-- JS -->
