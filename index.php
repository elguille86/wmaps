<!DOCTYPE html>
<html>
  <head>
    <title>Centros del Callao</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
 
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=drawing,places&signed_in=true"></script>
	<?php  
		define('DB_HOST', 'localhost');
		define('DB_USER', 'root');
		define('DB_PASS', 'developer');
		define('DB_NAME', 'bdwebdiresa02');
		define('DB_CHAR', 'utf8');
		$opt = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
		$pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS, $opt);
		$sql_bonilla ="SELECT nom_este, latitud, longitud, dir_cent FROM tb_cen_anexo where nom_red='BONILLA'";
		$datos = $pdo->query( $sql_bonilla);  
        $lista_Bonilla = $datos->fetchall(PDO::FETCH_NUM) ; 

    $sql_bepeca ="SELECT nom_este, latitud, longitud, dir_cent FROM tb_cen_anexo where nom_red='BEPECA'";
    $datos = $pdo->query( $sql_bepeca);  
        $lista_Bepeca = $datos->fetchall(PDO::FETCH_NUM) ; 
        
    $sql_ventanilla ="SELECT nom_este, latitud, longitud, dir_cent FROM tb_cen_anexo where nom_red='VENTANILLA'";
    $datos = $pdo->query( $sql_ventanilla);  
        $lista_ventanilla = $datos->fetchall(PDO::FETCH_NUM) ; 
 
	?>
    <script>
var map;
function initialize() {
  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(-12.019282, -77.090738),
     
  };

  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
 
  //http://maps.google.com/mapfiles/kml/paddle/
  <?php 
    $icoboni = 'blu-square.png';
    $icobepe = 'grn-diamond.png';
    $icovent = 'ylw-circle.png';
  ?>
  var icoboni = '<?php echo $icoboni?>'; 
  var icobepe = '<?php echo $icobepe?>'; 
  var icovent = '<?php echo $icovent?>'; 
 
  <?php
  $i=1;
    $red="bonilla";
    foreach ($lista_Bonilla as $valores ) {
      echo "var myLatLng".$i.$red." = new google.maps.LatLng(".$valores[1].", ".$valores[2].");";
      echo "var contentString".$i.$red." = \"<div id='vent'><b>".$valores[0]." </b>Direccion : <br/>  ".$valores[3]." </div>\"; ";
      echo "var infowindow".$i.$red." = new google.maps.InfoWindow({ content: contentString".$i.$red."  });";    
      echo "
          var punto".$i.$red." = new google.maps.Marker({
                  position: myLatLng".$i.$red.", map: map, title: '".$valores[0]."' ,animation: google.maps.Animation.DROP ,icon: icoboni
          }); ";      
      echo " google.maps.event.addListener(punto".$i.$red.", 'click', function() { infowindow".$i.$red.".open(map,punto".$i.$red."); });  ";

      $i++;
    }    
  ?>


  <?php
  $i=1;
    $red="bepeca";
    foreach ($lista_Bepeca as $valores ) {
      echo "var myLatLng".$i.$red." = new google.maps.LatLng(".$valores[1].", ".$valores[2].");";
      echo "var contentString".$i.$red." = \"<div id='vent'><b>".$valores[0]." </b>Direccion : <br/>  ".$valores[3]." </div>\"; ";
      echo "var infowindow".$i.$red." = new google.maps.InfoWindow({ content: contentString".$i.$red."  });";    
      echo "
          var punto".$i.$red." = new google.maps.Marker({
                  position: myLatLng".$i.$red.", map: map, title: '".$valores[0]."' ,animation: google.maps.Animation.DROP ,icon: icobepe
          }); ";      
      echo " google.maps.event.addListener(punto".$i.$red.", 'click', function() { infowindow".$i.$red.".open(map,punto".$i.$red."); });  ";

      $i++;
    }   
  ?>


  <?php
  $i=1;
    $red="ventanilla";
    foreach ($lista_ventanilla as $valores ) {
      echo "var myLatLng".$i.$red." = new google.maps.LatLng(".$valores[1].", ".$valores[2].");";
      echo "var contentString".$i.$red." = \"<div id='vent'><b>".$valores[0]." </b>Direccion : <br/>  ".$valores[3]." </div>\"; ";
      echo "var infowindow".$i.$red." = new google.maps.InfoWindow({ content: contentString".$i.$red."  });";    
      echo "
          var punto".$i.$red." = new google.maps.Marker({
                  position: myLatLng".$i.$red.", map: map, title: '".$valores[0]."' ,animation: google.maps.Animation.DROP ,icon: icovent
          }); ";      
      echo " google.maps.event.addListener(punto".$i.$red.", 'click', function() { infowindow".$i.$red.".open(map,punto".$i.$red."); });  ";

      $i++;
    }  

 

  ?> 


 var input = /** @type {HTMLInputElement} */(
      document.getElementById('pac-input'));

  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.bindTo('bounds', map);

  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);



  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
    map: map ,animation: google.maps.Animation.DROP
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map, marker);
  });



  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    infowindow.close();
    var place = autocomplete.getPlace();
    if (!place.geometry) {
      return;
    }

    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }

    // Escribe texto o la dirección de un sitio web, o bien, traduce un documento.
 
    marker.setPlace({
      placeId: place.place_id,
      location: place.geometry.location 
    });
    marker.setVisible(true);

    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
        'Place ID: ' + place.place_id + '<br>' +
        place.formatted_address +'<br/>'+ place.administrative_area1 );
    infowindow.open(map, marker);
  });
 

}
 
 

 google.maps.event.addDomListener(window, 'load', initialize);

    </script>

   <style>
      html, body, #map-canvas { height: 100%;margin: 0px;padding: 0px }
      .controls {
        background-color: #fff; border-radius: 2px; border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box; font-family: Roboto; font-size: 15px; font-weight: 300; height: 32px;  margin-left: 17px; margin-top: 16px;  outline: none; padding: 0 11px 0 13px; text-overflow: ellipsis; width: 400px;
      }
      .controls:focus { border-color: #4d90fe; } 
      #levenda_map {  position: absolute;  bottom: 90px;  left: 10px;  z-index: 99;  background: white;   font-family: Roboto;  font-size: 0.75em; padding: 0.5em  0.8em ; border-radius: 2px; border: 2px solid #7e9eff; width: 140px; }
      .imgdet{ vertical-align: middle; }
    </style>
  </head>
  <body>
   <div id="levenda_map">
    <img src="<?php echo  $icoboni ?>" width='25' height='25' class='imgdet'> : Red Bonilla  <br/>
    <img src="<?php echo  $icobepe ?>" width='25' height='25' class='imgdet'> : Red Bepeca  <br/>
    <img src="<?php echo  $icovent ?>" width='25' height='25' class='imgdet'> : Red Ventanilla  <br/>
   </div>
    <input id="pac-input" class="controls" type="text" placeholder="Ingrese Lugar">
    <div id="map-canvas"></div>
    
  </body>
</html>