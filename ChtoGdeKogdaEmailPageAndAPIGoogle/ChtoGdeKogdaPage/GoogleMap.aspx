<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMap.aspx.cs" Inherits="ChtoGdeKogdaPage.GoogleMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="bootstrap.js"></script>
    <link href="bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="initial-scale=1.0"/>
    <meta charset="utf-8"/>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #my-map {
	width: 500px;
	height: 400px;
	margin: 0 auto;
}
    </style>

    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMpRyFm29masQAjPrZfq_wY04dyhVHuLY&sensor=false"></script>
<script>

    'use strict';

    document.addEventListener('DOMContentLoaded', drawMap);

    // make map available in global scope
    var map;

    function drawMap() {
        var storeLocation = new google.maps.LatLng(40.1016103, -75.0208668);

        var mapOptions = {
            'center': storeLocation,
            'zoom': 14,
            'mapTypeId': google.maps.MapTypeId.ROADMAP,
            'draggable': false
        };

        map = new google.maps.Map(document.getElementById("my-map"), mapOptions);

        var marker = new google.maps.Marker({
            position: storeLocation,
            map: map,
            title: 'Мы здесь (KleinLife)'
        });

        var popupContent = 'Клуб Что? Где? Когда? Комната 218<br />';
        popupContent += '10100 Jamison Ave,<br />';
        popupContent += 'Philadelphia, PA 19116';

        var infowindow = new google.maps.InfoWindow({
            content: popupContent,
            maxWidth: 270
        });

        google.maps.event.addListener(marker, 'click', function () {
            infowindow.open(map, marker);
        });

        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function () {
            geocodeAddress(geocoder, map);
        });

        function geocodeAddress(geocoder, resultsMap) {
            var address = document.getElementById('address').value;
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status === google.maps.GeocoderStatus.OK) {
                    resultsMap.setCenter(results[0].geometry.location);
                    var marker = new google.maps.Marker({
                        map: resultsMap,
                        position: results[0].geometry.location
                    });
                } else {
                    alert('Geocode was not successful for the following reason: ' + status);
                }
            });
        }
    }

</script>

</head>
<body>
    <form id="form1" runat="server">
        <h1 class="text-center">Мы находимся здесь</h1>
         <div id="my-map"></div>       
    </form>

</body>
</html>>
