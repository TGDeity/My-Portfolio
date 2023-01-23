<nav class="navbar navbar-light navbar-expand-md py-3">
    <div class="container-fluid"><a class="navbar-brand d-flex align-items-center" href={{ route('index') }}><img
                class="image" src="{{ asset('assets/img/Kültür_Üniversitesi_Logo.png') }}" width="40px"><span
                class="fw-normal"
                style="font-size: 23px;margin-left: 5px;font-family: Aclonica, sans-serif;">IKU</span></a><button
            data-bs-toggle="collapse" data-bs-target="#navcol-2" class="navbar-toggler"><span
                class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse d-md-flex justify-content-md-end" id="navcol-2">
            <ul class="navbar-nav" data-bs-target="#navcol-2" data-bs-smooth-scroll="true">
                <li class="nav-item"><a class="nav-link active" href={{ route('index') }}>Anasayfa</a></li>
                <li class="nav-item"></li>
                @if (Request::route()->getName() == 'aboutUs')
                    {{ null }}
                @else
                    <li class="nav-item"><a class="nav-link" href={{ route('aboutUs') }}>Hakkımızda</a></li>
                @endif

            </ul>
        </div>
    </div>
</nav>
