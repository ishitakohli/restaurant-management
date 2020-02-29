<%-- 
    Document   : map
    Created on : 11 Apr, 2018, 12:14:25 PM
    Author     : Home
--%>
<
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
       <%@include file="css.jsp" %>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Spot Us!</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 400px;
      }
      /* Optional: Makes the sample page fill the window. */
         </style>
  </head>
  <body>
       <%@include file="userheader.jsp" %>

    <div id="map"></div>
    <script>

      function initMap() {
        var myLatLng = {lat: 31.294421, lng: 75.583031};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Staple Foods!'
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPaiSnBYomc16jYHeiFNf_ZA_QktKG4wo&callback=initMap">
    </script>
     <%@include file="footer.jsp" %>

  </body>
</html>
