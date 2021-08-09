document.addEventListener('DOMContentLoaded', function() {

  var target = document.querySelector('#map');

  navigator.geolocation.getCurrentPosition(function(position) {

    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
  });
});
