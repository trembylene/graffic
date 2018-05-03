import GMaps from 'gmaps/gmaps.js';

function mouseOverMarker(markerId) {
  const elem = document.getElementById(markerId);
  if (elem)
    elem.classList.toggle("highlight");
}

function addMarkersToMap(markers, map) {
  markers.forEach(function(marker) {
    map.addMarker(
      Object.assign(marker, {
        mouseover: function() {
          mouseOverMarker(marker.id);
        },
        mouseout: function() {
          mouseOverMarker(marker.id);
        },
      })
    )
  })
}

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  if (markers.length === 1) {
    map.addMarkers(markers);
  } else {
    map.addMarkers(markers);
  }
  addMarkersToMap(markers, map)
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

const mapSearchElement = document.getElementById('map_search');
if (mapSearchElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map_search', lat: 0, lng: 0 });
  const markers = JSON.parse(mapSearchElement.dataset.markers);
  if (markers.length === 1) {
    map.addMarkers(markers);
  } else {
    map.addMarkers(markers);
  }
  addMarkersToMap(markers, map)
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

import { autocomplete } from '../components/autocomplete';
import { geolocation } from '../components/geolocation';

autocomplete();
geolocation();
