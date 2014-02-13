var mapCanvas = document.getElementById('js-map-canvas');

if (mapCanvas) {
  google.maps.event.addDomListener(window, 'load', function () {
    var map = new google.maps.Map(mapCanvas, {
      
    });
  });
}

jsgirls.Map = function (selector, options) {
  this.map = null;
  var that = this;
  google.maps.event.addDomListener(window, 'load', function () {
    var mapCanvas = document.querySelector(selector);
    if (!mapCanvas) {
      throw new Error('Map canvas does not exist.');
    }
    var lat = options.lat || 35.6606782;
    var lng = options.lng || 139.72862716;
    var latlng = new google.maps.LatLng(lat, lng);
    that.map = new google.maps.Map(mapCanvas, {
      center: latlng,
      zoom: options.zoom || 12,
      mapTypeControl: true,
      overviewMapControl: true,
      panControl: true,
      rotateControl: false,
      scaleControl: true,
      zoomControl: true
    });
    var marker = new google.maps.Marker({
      position: latlng,
      title: options.title || 'Google Japan'
    });
    marker.setMap(that.map);
  });
};