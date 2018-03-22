import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in

  const marker = JSON.parse(mapElement.dataset.marker);
  const map = new GMaps({ el: '#map', lat: marker.lat, lng: marker.lng});
  map.addMarker(marker);
  map.setZoom(15);
}
