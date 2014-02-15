jsgirls.Map = function (selector, options) {
  this.map = null;

  // get map div
  var mapCanvas = document.querySelector(selector);
  if (!mapCanvas) {
    throw new Error('Map canvas does not exist.');
  }
  
  // get latitude and longitude
  var lat = options.lat || 35.6606782;
  var lng = options.lng || 139.72862716;
  var latlng = new google.maps.LatLng(lat, lng);
  
  // initialize map
  this.map = new google.maps.Map(mapCanvas, {
    center: latlng,
    zoom: options.zoom || 12,
    mapTypeControl: true,
    overviewMapControl: true,
    panControl: true,
    rotateControl: false,
    scaleControl: true,
    zoomControl: true
  });
  
  // put pin and set it
  var marker = new google.maps.Marker({
    position: latlng,
    title: options.title || 'Google Japan'
  });
  marker.setMap(this.map);
};