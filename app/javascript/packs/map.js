import GMaps from 'gmaps/gmaps.js';


const homeMap = document.getElementById('home-map');
if (homeMap) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#home-map', lat: 45.5022201, lng: -73.5945906 });
  const markers = JSON.parse(homeMap.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}


const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in

  var marker = JSON.parse(mapElement.dataset.marker);
  var map = new GMaps({ el: '#map', lat: marker.lat, lng: marker.lng});
  map.addMarker(marker);
  map.setZoom(16);
}
