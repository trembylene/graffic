function geolocation() {
  var options = {
    enableHighAccuracy: true,
    timeout: 8000,
    maximumAge: 0
  };

  function success(pos) {
    var crd = pos.coords;
    var location = document.getElementById("art_location");

    document.getElementById("locator").remove();
    document.getElementById("art_latitude").setAttribute("value", crd.latitude);
    document.getElementById("art_longitude").setAttribute("value", crd.longitude);
    fetch(window.location.protocol + `//maps.googleapis.com/maps/api/geocode/json?latlng=${crd.latitude},${crd.longitude}&sensor=true`)
      .then(function(response) {
          return response.json();
        })
        .then(function(myJson) {
          location.setAttribute('value', myJson.results[0].formatted_address);
        });
  }

  function error(err) {
    var locator = document.getElementById("locator")
    console.warn(`ERROR(${err.code}): ${err.message}`);
    locator.disabled = false;
    locator.innerHTML = locator.getAttribute('data-reset-text');
  }

  function geolocate() {
    navigator.geolocation.getCurrentPosition(success, error, options);
  }
  const locator = document.getElementById("locator");
  if (locator) {
    locator.addEventListener("click", function(event) {
      event.target.setAttribute('disabled', true);
      event.target.innerHTML = event.target.getAttribute('data-loading-text');
      setTimeout(function() {
        event.target.disabled = false;
        event.target.setAttribute('value', event.target.getAttribute('data-reset-text'));
      }, 8000);
      geolocate();
    })
  }
}

export { geolocation };
