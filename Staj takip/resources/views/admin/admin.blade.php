<!-- resources/views/components/layout.blade.php -->
@extends('layouts.front')
<!-- HEAD TAGS -->
@section('meta')
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Panel</title>
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
    @include('front.include.navbar')

    <div class="column text-center">
        <header>
            <h1>Staj Takip</h1>
        </header>


        {{--  <img style="width: 100%;" src="https://www.unibilgi.net/wp-content/uploads/2019/03/istanbul-kultur-universitesi.jpg"
            alt=""> --}}

        <div class="table">
            <table class="table table-primary">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">internShip name </th>
                        <th scope="col">internShip mark </th>
                        <th scope="col">user id </th>
                        <th scope="col">employer id</th>
                        <th scope="col">teacher id</th>
                    </tr>
                </thead>
                <tbody>



                    @foreach ($internships as $val)
                        <tr class="">

                            <td>{{ $val->id }}</td>
                            <td>{{ $val->internshipName }}</td>
                            <td>{{ $val->internshipMark }}</td>
                            <td>{{ $val->user_id }}</td>
                            <td>{{ $val->employer_id }}</td>
                            <td>{{ $val->teacher_id }}</td>
                        </tr>
                    @endforeach


                </tbody>
            </table>
        </div>
        <div class="table">
            <table class="table table-primary">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">User number </th>
                        <th scope="col">user</th>
                        <th scope="col">password</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($students as $val)
                        <tr class="">
                            <td>{{ $val->id }}</td>
                            <td>{{ $val->number }}</td>
                            <td>{{ $val->name }}</td>
                            <td>{{ $val->password }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>


    </div>



    @include('front.include.footer')
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
