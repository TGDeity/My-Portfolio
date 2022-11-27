<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Project Admin</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('md5/css/mdb.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap">
    <style>
        .text-class {
            width: 200px;
            height: 15px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <script type="text/javascript" src="{{ asset('md5/js/mdb.min.js') }}"></script>
    <script>
        function kopyala(element) {
            var alan = element.parentElement.querySelector('pre').innerHTML;
            var textAlani = document.createElement('TEXTAREA');
            textAlani.value = alan;
            document.body.appendChild(textAlani);
            textAlani.select();
            document.execCommand('copy');
            textAlani.style.display = 'none';
        }


        function gizleGoster(ID) {
            var secilenID = document.getElementById(ID);
            if (secilenID.style.display == "none") {
                secilenID.style.display = "";
            } else {
                secilenID.style.display = "none";
            }
        }
    </script>
</head>

<body>
    <button class="btn btn-simply" onclick="gizleGoster('gizleGoster');">Ekle / Güncelle</button>
    <div id="gizleGoster">
        <div style="height:500px; float: left; margin-right:10px;">
            <div class="tab-content">
                <form action="{{ route('insertProject') }}" style="border: 2px solid;" method="POST">
                    @csrf
                    <div class="text-left" style="margin: 50px;">
                        <h2 style="text-align: center">Proje Ekle</h2>
                        <!-- text input -->
                        <div class="form-outline mb-4">
                            <strong> Name</strong>
                            <input style="border: 1px solid;" name="name" id="name" cols="30"
                                id="text" class="form-control">
                        </div>
                        <div class="form-outline mb-4">
                            <strong> Text</strong>
                            <textarea style="border: 1px solid;" name="text" id="text" cols="30" rows="3" class="form-control"></textarea>
                        </div>
                        <div class="form-outline mb-4">
                            <strong> Download Link</strong>
                            <input style="border: 1px solid;" name="download_link" id="download_link" cols="30"
                                class="form-control">
                        </div>
                        <div class="form-outline mb-4">
                            <strong> Project_id</strong>
                            <input style="border: 1px solid;" name="project_id" id="project_id" cols="30"
                                class="form-control">
                        </div>
                        <div class="form-outline mb-4">
                            <strong> project_photo_link</strong>
                            <input style="border: 1px solid;" name="project_photo_link" id="project_photo_link"
                                cols="30" class="form-control">
                        </div>
                        <div class="form-outline mb-4">
                            <strong> Photo Link</strong>
                            <input style="border: 1px solid;" name="photo_link" id="photo_link" cols="30"
                                class="form-control">
                        </div>

                    </div>
                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4">Gönder!</button>
                </form>
            </div>
        </div>
        <div id="gizleGoster" style="height:700px; float: left;">
            <div>
                <form action="{{ route('guncelle') }}" method="POST">
                    @csrf
                    @if (isset($_POST['id']))
                        <div style="border: 2px solid;">
                            <div class="text-left" style="margin: 50px;">
                                <h2 style="text-align: center">Projeyi Güncelle</h2>
                                <!-- text input -->
                                <div class="form-outline mb-4">
                                    <strong> Proje ismi</strong>
                                    <input style="border: 1px solid;" name="name" id="name" cols="30"
                                        id="text" class="form-control" value="{{ $_POST['name'] }}">
                                </div>
                                <div hidden class="form-outline mb-4">
                                    <strong> Text</strong>
                                    <textarea style="border: 1px solid;" name="id" id="id" cols="30" rows="3" class="form-control">{{ $_POST['id'] }}</textarea>
                                </div>
                                <div class="form-outline mb-4">
                                    <strong> Text</strong>
                                    <textarea style="border: 1px solid;" name="text" id="text" cols="30" rows="3" class="form-control">{{ $_POST['text'] }}</textarea>
                                </div>



                                <div class="form-outline mb-4">
                                    <strong> project_id</strong>
                                    <textarea style="border: 1px solid;" name="project_id" id="text" cols="30" rows="3"
                                        class="form-control">{{ $_POST['project_id'] }}</textarea>
                                </div>

                                <div class="form-outline mb-4">
                                    <strong> Download Link</strong>
                                    <input style="border: 1px solid;" name="download_link" id="download_link"
                                        cols="30" class="form-control" value="{{ $_POST['download_link'] }}">
                                </div>
                                <div class="form-outline mb-4">
                                    <strong> photo_link</strong>
                                    <textarea style="border: 1px solid;" name="photo_link" id="photo_link" cols="30" class="form-control">{{ $_POST['photo_link'] }}</textarea>
                                </div>
                                <div class="form-outline mb-4">
                                    <strong> project_Photo_Link</strong>


                                    <textarea style="border: 1px solid;" name="project_photo_link" id="project_photo_link" cols="30"
                                        class="form-control">{{ $_POST['project_photo_link'] }}</textarea>



                                </div>

                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-block mb-4">Güncelle!</button>
                        @else
                            <div class="alert alert-primary" role="alert">
                                <strong>Lütfen Güncellemek için tablodan Proje seçiniz!</strong>
                            </div>
                        </div>
                    @endif
                </form>
            </div>
        </div>
    </div>
    </div>







    <div style="margin-top: 65%" class="mx-auto " id="table-div">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th scope="col">ID</th>
                    <th scope="col">name</th>
                    <th scope="col">Text</th>
                    <th scope="col">download_link</th>
                    <th scope="col">photo_link</th>
                    <th scope="col">project_photo_link</th>
                    <th scope="col">Güncelle</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($project as $projects)
                    <tr>
                        <td></td>
                        <th scope="row"> {{ $projects->id }}</th>
                        <td>
                            {{ $projects->name }}
                        </td>
                        <td>
                            <pre class="text-class" id="text">{{ $projects->text }}</pre>
                            <button class="btn btn-primary" onclick="kopyala(this);">Metni Kopyala</button>
                        </td>
                        <td>

                            <a style="margin-top: 30px;" class="btn btn-primary"
                                href="{{ $projects->download_link }}">indir</a>
                        </td>

                        <td>
                            <a style="margin-top: 30px;" class="btn btn-primary"
                                href="{{ $projects->photo_link }}">İncele</a>
                        </td>

                        <td>
                            <a style="margin-top: 30px;" class="btn btn-primary"
                                href="{{ $projects->project_photo_link }}">İncele</a>
                        </td>
                        <td>
                            <form action="{{ route('projectAdmin') }}" method="POST">
                                @csrf
                                <input hidden id="id" name="id" value="{{ $projects->id }}">
                                <input hidden id="text" name="name" value="{{ $projects->name }}">
                                <input hidden id="text" name="text" value="{{ $projects->text }}">
                                <input hidden id="text" name="project_id" value="{{ $projects->project_id }}">

                                <input hidden id="download_link" name="download_link"
                                    value="{{ $projects->download_link }}">
                                <input hidden id="photo_link" name="photo_link" value="{{ $projects->photo_link }}">
                                <input hidden id="project_photo_link" name="project_photo_link"
                                    value="{{ $projects->project_photo_link }}">
                                <button style="margin-top: 30px;" type="submit"
                                    class="btn btn-primary">🆕Güncelle</button>
                            </form>

                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</body>

</html>
