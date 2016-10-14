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

class LocationMap
  constructor: (@location) ->
    return unless $('#map').size()
    @map = L.map('map').setView(
      [@location.latitude, @location.longitude],
      @location.zoom
    )
    mapLink = '<a href="http://openstreetmap.org">OpenStreetMap</a>'
    L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      attribution: 'Map data &copy; ' + mapLink
      maxZoom: 19
    ).addTo(@map)
    @marker = @createMarker()
    @map.on('locationfound', @onLocationFound)
    @map.locate(setView: false, maxZoom: 19)

  createMarker: ->
    marker = L.marker([@location.latitude, @location.longitude]).addTo(@map)
    marker.bindPopup(@location.title).openPopup()
    marker

  onLocationFound: (e) ->
    console.log "#{e.latlng}"
    console.log "#{e.accuracy}"
    return

locationMap = ->
  new LocationMap(cieszyn)

 jQuery -> locationMap()