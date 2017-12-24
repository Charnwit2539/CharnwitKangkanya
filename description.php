<?php
include 'supplement.php';
?>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>   
  </head>
  <body>
  <h5 align="center">แผ่นที่ร้าน Rent Superbike</h5>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: 17.836418, lng: 102.747824};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuLIuV2QbyqqoOGOJ-fkoL8h7xtg5pliM&callback=initMap">
    </script>
<hr/>
<div class="jumbotron jumbotron-fluid ">
  <div class="container">
    <h3 class="display-4">ติดต่อ</h3> 
    <h5>ที่อยู่:171 หมู่8 ต.หนองกอมเกาะ อ.เมือง จ.หนองคาย 43000  โทร: 096-9530655</h5>
  </div>
</div>
  </body>
</html>