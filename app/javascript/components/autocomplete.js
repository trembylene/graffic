function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var artAddress = document.getElementById('art_location');
    var city = document.getElementById('city_location');

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

    if (city) {
      var autocomplete = new google.maps.places.Autocomplete(artAddress, { types: [ '(cities)' ] });
      google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
      google.maps.event.addDomListener(artAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
