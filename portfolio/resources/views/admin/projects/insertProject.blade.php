@php
    function insert()
    {
        if (isset($_POST['name'])) {
            if (!$_POST['name'] == '' && !$_POST['download_link'] == '' && !$_POST['project_photo_link'] == '' && !$_POST['project_id'] == '' && !$_POST['photo_link'] == '') {
                $name = $_POST['name'];
                $text = $_POST['text'];
                $download_link = $_POST['download_link'];
                $project_photo_link = $_POST['project_photo_link'];
                $project_id = $_POST['project_id'];
                $photo_link = $_POST['photo_link'];
    
                DB::table('project')->insert([
                    'name' => "$name",
                    'text' => "$text",
                    'download_link' => "$download_link",
                    'project_photo_link' => "$project_photo_link",
                    'project_id' => "$project_id",
                    'photo_link' => "$photo_link",
                ]);
            } else {
                echo 'Lütfen veri eklerken boş değer girmeyiniz.';
            }
        } else {
            echo 'insertProject.blade.php Dosyası hata verdi';
        }
    }
    insert();
@endphp
<!DOCTYPE html>
<html lang="en">

<body>
    <script type="text/javascript">
        function sa() {
            setTimeout(() => {
                window.location.href = "/admin/projectAdmin"
            }, 3000);

        }
        sa();
    </script>
</body>

</html>
