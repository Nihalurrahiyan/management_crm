<!DOCTYPE html>
<html>
<head>
  <title> Dashboard </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" type="image/png" href="img\N.png" />
  <link rel="stylesheet" type="text/css" href="assets/css/admin.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> <style>
      body {
          background-image: url("bg.png");
          background-size: 100%;
          background-repeat: no-repeat;
      }
  </style>
  <script>
    function uploadFile() {
        const formData = new FormData();

        $.ajax({
            url: 'upload_handler.php', 
            type: 'POST',
            data: formData,
            processData: false, 
            contentType: false, 
            success: function(response) {
                $('#result').html(response); // Update the result div
            },
            error: function(error) {
                $('#result').html("An error occurred during upload.");
            } 
        });
    }
  </script>
</head>

<body>
  <div class="banner">
    </div>

  <div class="content">
    <h1>WELCOME</h1>
    <button type="button" onclick="uploadFile();"><span></span>UPLOAD LIST</button>
    <a href="view_list.php">
        <button type="submit"><span></span>VIEW LIST</button>
    </a>
    <div id="result"></div> </div>

</body>
</html>
