<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style type="text/css">
        html {
            height: 100%
        }

        body {
            height: 100%;
            margin: 0;
            padding: 0
        }

        #map_canvas {
            height: 100%
        }
    </style>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
    </script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places">
    </script>
    <script type="text/javascript">
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(success);
        } else {
            alert("Geo Location is not supported on your current browser!");
        }
        function success(position) {
            var lat = position.coords.latitude;
            var long = position.coords.longitude;
            var city = position.coords.locality;
            var myLatlng = new google.maps.LatLng(lat, long);
            var myOptions = {
                center: myLatlng,
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                title: "lat: " + lat + " long: " + long
            });
            marker.setMap(map);
            var infowindow = new google.maps.InfoWindow({ content: "<b>User Address</b><br/> Latitude:" + lat + "<br /> Longitude:" + long + "" });
            infowindow.open(map, marker);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="map_canvas" style="width: 100%; height: 200px"></div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3749.1225867890034!2d73.76538461491572!3d20.003369086562714!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb990eb8026b%3A0x14aebc0c7b255db4!2sBilling%20%26%20Hospital%20Management%20Software%20%7C%20Ideal%20Tech%20Info!5e0!3m2!1sen!2sin!4v1677757903102!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </form>
</body>
</html>
