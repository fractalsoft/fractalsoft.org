cieszyn =
  latitude: 49.7483
  longitude: 18.6307
  title: '<b>Fractal Soft</b><br>serwis laptopów'
  zoom: 19

gliwice =
  latitude: 50.2907
  longitude: 18.6784
  title: '<b>Fractal Soft</b><br>strony internetowe'
  zoom: 19

location = cieszyn

onLocationFound = (e) ->
  radius = e.accuracy / 2
  L.marker(e.latlng).addTo(map).bindPopup('You are within ' + radius + ' meters from this point').openPopup()
  L.circle(e.latlng, radius).addTo map
  return

jQuery ->
  map = L.map('map').setView([location.latitude, location.longitude], location.zoom)
  mapLink = '<a href="http://openstreetmap.org">OpenStreetMap</a>'
  L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
    {
      attribution: 'Map data &copy; ' + mapLink,
      maxZoom: 19,
    }).addTo(map)
  marker = L.marker([location.latitude, location.longitude]).addTo(map)
  marker.bindPopup(location.title).openPopup()

  # onMapClick = (e) -> console.log "Coordinate: #{e.latlng}"
  # onLocationFound = (e) -> console.log "#{e.accuracy}"

  # map.on('click', onMapClick)
  # map.on('locationfound', onLocationFound)
