﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Click.aspx.cs" Inherits="Click" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(18.9300, 72.8200),
                zoom: 14,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            google.maps.event.addListener(map, 'click', function (e) {
                alert("Latitude: " + e.latLng.lat() + "\r\nLongitude: " + e.latLng.lng());
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="dvMap" style="width: 500px; height: 500px">
    </div>
    </form>
</body>
</html>
