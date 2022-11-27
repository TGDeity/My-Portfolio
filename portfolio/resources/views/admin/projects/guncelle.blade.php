@php
    function update()
    {
        if (isset($_POST['id'])) {
            $name = $_POST['name'];
            $text = $_POST['text'];
            $download_link = $_POST['download_link'];
            $photo_link = $_POST['photo_link'];
            $project_photo_link = $_POST['project_photo_link'];
            $project_id = $_POST['project_id'];

    
            switch ($_POST['name']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('id', $_POST['id'])
                        ->update([
                            'name' => "$name",
                        ]);
                    break;
            }
    
            switch ($_POST['text']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('id', $_POST['id'])
                        ->update([
                            'text' => "$text",
                        ]);
                    break;
            }
            switch ($_POST['download_link']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('id', $_POST['id'])
                        ->update([
                            'download_link' => "$download_link",
                        ]);
                    break;
            }
    
            switch ($_POST['photo_link']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('id', $_POST['id'])
                        ->update([
                            'photo_link' => "$photo_link",
                        ]);
                    break;
            }
    

    
            switch ($_POST['project_photo_link']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('project_photo_link', $_POST['project_photo_link'])
                        ->update([
                            'project_photo_link' => "$project_photo_link",
                        ]);
                    break;
            }
    
            switch ($_POST['project_id']) {
                case '':
                    null;
                    break;
    
                default:
                    DB::table('project')
                        ->where('project_id', $_POST['project_id'])
                        ->update([
                            'project_id' => "$project_id",
                        ]);
                    break;
            }
        }
    }
    
    update();
@endphp
<!DOCTYPE html>
<html lang="en">

<body>
    <script type="text/javascript">
        window.location.href = "/admin/projectAdmin"
    </script>
</body>

</html>
