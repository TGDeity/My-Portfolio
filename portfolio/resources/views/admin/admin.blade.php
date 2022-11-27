@extends('layouts.front')

@section('html-class')
@endsection

@section('meta')
@endsection


@section('css')
@endsection


@section('js')
@endsection

@section('content')
    Merhaba {{ auth()->user()->name }}

    <a href="{{ route('projectAdmin') }}">Proje ekle</a>

    <li class="nav-item">
        <a class="nav-link" href="javascript:void(0)"
            onclick="event.preventDefault();
    document.getElementById('logoutForm').submit();">Çıkış Yap</a>
    </li>
    <form method="POST" action="{{ route('logout') }}" id="logoutForm">
        @csrf
    </form>
@endsection
