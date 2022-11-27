@extends('layouts.front')
@section('html-class')
    style="font-size: 16px;" lang="tr"
@endsection
@section('meta')
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="login">
    <meta name="description" content="login">
    <meta name="robots" content="noindex">
    <title>login</title>
@endsection
@section('css')
   
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link href="{{ asset('css/register.css') }}" rel="stylesheet">

    <style>
        html {
            font-family: sans-serif;
        }

        body {
            background: url(https://maxoffsky.com/word/wp-content/uploads/2013/03/laravel_blue_2560x1600.jpg);
            /*Any Image or color*/
            color: white;
            background-size: cover;
        }

        .container {
            width: 330px;
            margin: auto;
            margin-top: 10%;
            padding: 5px;
            backdrop-filter: blur(17px) saturate(200%);
            -webkit-backdrop-filter: blur(17px) saturate(200%);
            background-color: rgba(190, 190, 190, 0.44);
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.125);
            border-radius: 10px;
        }

        .title {
            text-align: center;
            color: #b82800;
            font-weight: 400;
        }

        .form {
            padding: 15px;
        }

        .form-group {
            position: relative;
            padding: 20px 0;
            margin: auto;
            max-width: 100%;
        }

        .form-group input {
            background-color: transparent;
            border: none;
            border-bottom: 1.4px solid #d8d7d7;
            font-size: 18px;
            padding: 10px 0;
            display: block;
            width: 100%;
        }

        .form-group label {
            color: #f0eaea;
            font-size: 16px;
            font-weight: 100;
            position: absolute;
            pointer-events: none;
            top: 0;
            transform: translateY(30px);
            transition: all 0.2s ease-in-out;
            left: 0px;
        }

        .form-group input:valid,
        .form-group input:focus {
            border-bottom-color: #dddddd;
            outline: none;
        }

        .form-group input:valid+label,
        .form-group input:focus+label {
            color: rgb(247, 247, 247);
            font-size: 14px;
            transform: translateY(0);
        }

        .submit {
            background: rgb(218 51 3);
            padding: 7px 0;
            outline: none;
            font-size: 18px;
            width: 100%;
            margin: 17px 0;
            cursor: pointer;
            color: rgb(226, 224, 224);
            border-radius: 5px;
            transition: 0.1s;
            border: 1px solid rgb(218 51 3);
        }

        .submit:hover {
            background: rgba(216, 214, 214, 0.301);
            color: rgb(218 51 3);
        }

        a {
            /*globally*/
            text-decoration: none;
        }

        .row a {
            color: rgb(218 51 3);
        }

        a:hover {
            /*For all links*/
            color: white;
        }

        .last {
            text-align: center;
            padding: 5px;
        }

        .last a {
            margin: 0 10px;
            font-size: 14px;
            color: #66C1E5;
        }
    </style>
@endsection
@section('js')
@endsection
@section('content')

    <head>
        <title>Login form</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">
            <div class="form">
                <h3 class="title">Login to admin panel</h3>
                <form action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <input type="email" name="email" required /><label>Email</label>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" required /><label>Password</label>
                    </div>
                    <input type="submit" value="Sign In" class="submit">

                </form>
            </div>


            @if ($errors->any())
                <div>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    </body>





@endsection
