<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #mapa_div { height: 100% }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=drawing,places&signed_in=true"></script>
    <script type="text/javascript">
      var marker = null;
 
      function funcionClick() {
        if (marker.getAnimation() != null) {
          marker.setAnimation(null);
        } else {
          marker.setAnimation(google.maps.Animation.BOUNCE);
        }
      }
 
      function inicializar_mapa() {
        var mapOptions = {
          center: new google.maps.LatLng(37.774807, -3.795573),
          zoom: 14,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("mapa_div"),
            mapOptions);
 
        var pos = new google.maps.LatLng(37.774807, -3.795573);
 
        marker = new google.maps.Marker({
            position: pos,
            map: map,
            title:"Esto es un marcador",
            animation: google.maps.Animation.DROP
        }); 
 
        marker.setIcon('https://dl.dropboxusercontent.com/u/20056281/Iconos/male-2.png');
       // google.maps.event.addListener(marker, 'click', funcionClick);
       google.maps.event.addListener(window, 'load', funcionClick);
 
      }
    </script>
  </head>
  <body onload="inicializar_mapa()">
    <div id="mapa_div" style="width:100%; height:100%"></div>
  </body>
</html>