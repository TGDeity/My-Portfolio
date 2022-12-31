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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
@endsection
<!-- CSS -->

<!-- BODY CONTENT -->
@section('content')
    <div class="container-fluid" style="width: 30%;height: 60%;">
        <form method="post" action="{{ route('register') }}">

            @csrf
            <h1 class="h3 mb-3 fw-normal">Register</h1>
            <div class="form-group form-floating mb-3">
                <label for="floatingEmail">Email address</label>
                <input type="email" class="form-control" name="email" value="{{ old('email') }}"
                    placeholder="name@example.com" required="required" autofocus>
                @if ($errors->has('email'))
                    <span class="text-danger text-left">{{ $errors->first('email') }}</span>
                @endif
            </div>
            <div class="form-group form-floating mb-3">
                <label for="floatingName">number</label>
                <input type="text" class="form-control" name="number" value="{{ old('number') }}" placeholder="number"
                    required="required" autofocus>
                @if ($errors->has('number'))
                    <span class="text-danger text-left">{{ $errors->first('number') }}</span>
                @endif
            </div>
            <div class="form-group form-floating mb-3">
                <label for="floatingPassword">Password</label>
                <input type="password" class="form-control" name="password" value="{{ old('password') }}"
                    placeholder="Password" required="required">
                @if ($errors->has('password'))
                    <span class="text-danger text-left">{{ $errors->first('password') }}</span>
                @endif
            </div>

            <div class="form-group form-floating mb-3">
                <label for="floatingConfirmPassword">Confirm Password</label>
                <input type="password" class="form-control" name="password_confirmation"
                    value="{{ old('password_confirmation') }}" placeholder="Confirm Password" required="required">
                @if ($errors->has('password_confirmation'))
                    <span class="text-danger text-left">{{ $errors->first('password_confirmation') }}</span>
                @endif
            </div>

            <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>

            {{--  @include('auth.partials.copy') --}}
        </form>
    </div>
@endsection
<!-- BODY CONTENT -->

<!-- JS -->
@section('js')
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
@endsection
<!-- JS -->
