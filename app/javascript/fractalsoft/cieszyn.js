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
    this.location = location;
    if (!$('#map').length) { return; }
    this.map = L.map('map').setView(
      [this.location.latitude, this.location.longitude],
      this.location.zoom
    );
    const mapLink = '<a href="https://openstreetmap.org">OpenStreetMap</a>';
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; ' + mapLink,
      maxZoom: 19
    }
    ).addTo(this.map);
    this.marker = this.createMarker();
    this.map.on('locationfound', this.onLocationFound);
    this.map.locate({setView: false, maxZoom: 19});
  }

  createMarker() {
    const marker = L.marker([this.location.latitude, this.location.longitude]).addTo(this.map);
    marker.bindPopup(this.location.title).openPopup();
    return marker;
  }

  onLocationFound(e) {
    console.log(`${e.latlng}`);
    console.log(`${e.accuracy}`);
  }
}

const locationMap = () => new LocationMap(cieszyn);

jQuery(() => locationMap());
