<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404!</title>
    <script>
        function redirect() {
            setTimeout(() => {
                window.location.href = "/"
            }, 3000);

        }
        redirect();
    </script>
</head>



@extends('layouts.front')
{{-- HEAD TAGS --}}
@section('meta')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404!</title>
@endsection
{{-- HEAD TAGS --}}
{{-- CSS --}}
@section('css')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
@endsection
{{-- CSS --}}

{{-- BODY CONTENT --}}
@section('content')
    <div style="text-align: center">
        <img width="670px" height="670px" src="{{ asset('assets/images/404.jpg') }}" alt="Aranan sayfa bulunamadı">
    </div>
@endsection
{{-- BODY CONTENT --}}

{{-- JS --}}
@section('js')
    <script>
        function redirect() {
            setTimeout(() => {
                window.location.href = "/"
            }, 3000);

        }
        redirect();
    </script>
@endsection
{{-- JS --}}
