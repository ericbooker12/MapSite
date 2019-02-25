var marker;

function initMap() {

	var lat = parseFloat(document.getElementById('lat').innerHTML);
	var lng = parseFloat(document.getElementById('lng').innerHTML);

	var coords = {lat, lng};

	console.log(coords);

	// The map, centered at Uluru
	var map = new google.maps.Map(
  document.getElementById('map'), {zoom: 18, center: coords});

	marker = new google.maps.Marker({
		position: coords,
		animation: google.maps.Animation.DROP,
		map: map
	});

	marker.addListener('click', toggleBounce);

}

function toggleBounce() {
  if (marker.getAnimation() !== null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }
}