@include('front.include.body.unlogged.unlogged_guest_navbar')
<main class="page lanidng-page">
    <section class="portfolio-block website gradient">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-12 col-lg-5 offset-lg-1 text">
                    <h3>Staj Takip Uygulaması</h3>
                </div>
                <div class="col-md-12 col-lg-5">
                    <div class="portfolio-laptop-mockup">
                        <div class="screen">
                            <div class="screen-content"
                                style="background: url(&quot;{{ asset('assets/iku.jpg') }}&quot;);background-size: cover;">
                            </div>
                        </div>
                        <div class="keyboard"></div>
                    </div>
                </div>

                <div class="deneme " style="padding-top: 10px">

                    <style>
                        .deneme {
                            display: flex;
                            height: 20rem;

                            gap: 1rem;

                        }

                        .deneme>div {
                            flex: 1;
                            border-radius: 1rem;
                            background-position: center;
                            background-repeat: no-repeat;
                            background-size: auto 100%;
                            transition: all .8s cubic-bezier(.25, .4, .45, 1.4);
                        }

                        .deneme>div:hover {
                            flex: 5;
                        }
                    </style>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                    <div style="background-image: url({{ asset('assets/iku.jpg') }}) "></div>
                </div>
            </div>
        </div>
    </section>


</main>
@include('front.include.body.unlogged.unlogged_guest_footer')
