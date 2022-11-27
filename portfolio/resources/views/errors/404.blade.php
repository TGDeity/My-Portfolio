<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404!</title>
    <script>
        function sa() {
            setTimeout(() => {
                window.location.href = "/"
            }, 3000);

        }
        sa();
    </script>
</head>

<body>
    <div style="text-align: center">
        <img width="670px" height="670px" src="{{ asset('images/404.jpg') }}" alt="Aranan sayfa bulunamadı">
    </div>
</body>

</html>
