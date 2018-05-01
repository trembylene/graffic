function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var artAddress = document.getElementById('art_location');
    var city_bar = document.getElementById('city_location');
    var city_stack = document.getElementById('city_location_stack');

    function onPlaceChanged() {
      var place = this.getPlace();
      document.getElementById("art_latitude").setAttribute("value", place.geometry.location.lat());
      document.getElementById("art_longitude").setAttribute("value", place.geometry.location.lng());
    }

    if (artAddress) {
      var autocomplete = new google.maps.places.Autocomplete(artAddress, { types: [ 'geocode' ] });
      google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
      google.maps.event.addDomListener(artAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }

    if (city_bar) {
      var autocomplete = new google.maps.places.Autocomplete(city_bar, { types: [ '(cities)' ] });
      google.maps.event.addDomListener(city_bar, 'keydown', function(e) {
        if (e.key === "Enter") {
          document.getElementById('search-location').submit();
        }
      });
    }
    if (city_stack) {
      var autocomplete = new google.maps.places.Autocomplete(city_stack, { types: [ '(cities)' ] });
      google.maps.event.addDomListener(city_stack, 'keydown', function(e) {
        if (e.key === "Enter") {
          document.getElementById('search-location-stack').submit();
        }
      });
    }
  });
}

export { autocomplete };
