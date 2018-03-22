import GMaps from 'gmaps/gmaps.js';

var mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in

  var marker = JSON.parse(mapElement.dataset.marker);
  var map = new GMaps({ el: '#map', lat: marker.lat, lng: marker.lng});
  map.addMarker(marker);
  map.setZoom(16);

//   var directionsDisplay = new google.maps.DirectionsRenderer();
//   var directionsService = new google.maps.DirectionsService();

//   function calcRoute() {
//     var origin = new google.maps.LatLng(45.5106021, -73.5785065);
//     var destination = new google.maps.LatLng(marker.lat, marker.lng);
//     var request = {
//         origin:      origin,
//         destination: destination,
//         travelMode:  google.maps.TravelMode.DRIVING
//     };
//     directionsService.route(request, (response, status) => {
//       if (status == google.maps.DirectionsStatus.OK) {
//         directionsDisplay.setDirections(response);
//       }
//     });
//   }
//   calcRoute();
}
