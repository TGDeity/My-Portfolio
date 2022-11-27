@extends('layouts.front')
@section('html-class')
@endsection
@section('meta')
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="login">
    <meta name="description" content="login">
    <meta name="robots" content="noindex">
    <meta name="theme-color" content="#712cf9">
    <title>Register</title>
@endsection
@section('css')
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link href="{{ asset('css/register.css') }}" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>
@endsection
@section('js')
@endsection
@section('content')

    <body style="background-color: rgb(49, 48, 48)" class="text-center dark">
        <form class="form mx-auto" action="{{ route('register') }}" method="POST">
            @csrf
            <h1 class="mb-3 fw-normal text-danger">Kayıt ol</h1>
            <div class="form-floating  mt-2">
                <input type="text" name="name" class="form-control" id="inputName" placeholder="Full name">
                <label for="inputName">Full name</label>
            </div>
            <div class="form-floating  mt-2">
                <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating mt-2 ">
                <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"
                    required autofocus>
                <label for="floatingPassword">Password</label>
            </div>
            <div class="form-floating  mt-2  ">
                <input type="password" name="password_confirmation" class="form-control" id="floatingPasswordConfirmation"
                    placeholder="Password Confirmation" required>
                <label for="floatingPasswordConfirmation">Password Confirmation</label>
            </div>

            <button class="w-100 btn btn-lg btn-primary mt-4 "type="submit">Register</button>
            <p class="mt-5 mb-3 text-muted">COPYRIGHT&copy; TGATECH @php
                echo date('Y');
            @endphp</p>
        </form>

        <div>
            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    <div class="alert alert-warning" role="alert">
                        <Strong>*</Strong>{{ $error }}
                @endforeach
        </div>
        @endif
        </div>


    </body>
@endsection
