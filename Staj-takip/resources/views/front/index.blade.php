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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
@endsection
<!-- CSS -->

<!-- BODY CONTENT -->
@section('content')
    @guest
        @include('front.include.body.unlogged.unlogged_guest') {{-- unlogged guest index --}}
    @else
        @if (Auth::user()->authority_id == 1)
            @include('front.include.body.logged.logged_student') {{-- logged student index --}}
        @elseif (Auth::user()->authority_id == 2)
            @include('front.include.body.logged.logged_teacher') {{-- logged teacher index --}}
        @elseif (Auth::user()->authority_id == 3)
            @include('front.include.body.logged.logged_employer') {{-- logged employer index --}}
        @endif
    @endguest
@endsection
<!-- BODY CONTENT -->

<!-- JS -->
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('assets/js/student_index_init.js') }}"></script>
@endsection
<!-- JS -->
