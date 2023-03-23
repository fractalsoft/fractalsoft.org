import L from 'leaflet'

const cieszyn = {
  latitude: 49.7483,
  longitude: 18.6307,
  title: '<b>Fractal Soft</b><br>serwis laptopów',
  zoom: 19
};

const gliwice = {
  latitude: 50.2907,
  longitude: 18.6784,
  title: '<b>Fractal Soft</b><br>strony internetowe',
  zoom: 19
};

class LocationMap {
  constructor(location) {
    if (!document.getElementById('map')) { return; }
    const map = L.map('map').setView(
      [location.latitude, location.longitude],
      location.zoom
    );
    const mapLink = '<a href="https://openstreetmap.org">OpenStreetMap</a>';
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; ' + mapLink,
      maxZoom: 19
    }
    ).addTo(map);
    this.createMarker(location, map);
    map.locate({setView: false, maxZoom: 19});
  }

  createMarker(location, map) {
    const marker = L.marker([location.latitude, location.longitude]).addTo(map);
    marker.bindPopup(location.title).openPopup();
  }
}

document.addEventListener("turbolinks:load", function() {
  const locationMap = () => new LocationMap(cieszyn);
  locationMap();
});
