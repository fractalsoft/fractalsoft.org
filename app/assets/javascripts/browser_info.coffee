class BrowserInfo
  constructor: ->
    @js = {}

  update: ->
    @js['document'] = @document()
    @js['innerHeight'] = innerHeight
    @js['innerWidth'] = innerWidth
    @js['location'] = @location()
    @js['navigator'] = @navigator()
    @js['screen'] = @screen()
    @js['time'] = @time()

  json: ->
    @update()
    JSON.stringify(@js)

  document: ->
    hash = {}
    hash['cookie'] = document.cookie
    hash['height'] = document.height
    hash['referrer'] = document.referrer
    hash['width'] = document.width
    hash

  location: ->
    hash = {}
    hash['hash'] = location.hash
    hash['host'] = location.host
    hash['hostname'] = location.hostname
    hash['href'] = location.href
    hash['origin'] = location.origin
    hash['pathname'] = location.pathname
    hash['port'] = location.port
    hash['protocol'] = location.protocol
    hash['search'] = location.search
    hash

  # appName - full browser name
  # appVersion - version of the browser
  # cookieEnabled - cookies are enabled
  # language - language the primary browser
  # onLine - is user currently connected to the Internet
  # platform - system platform
  # userAgent - user-agent for the  browser
  # vendor - brand name of the browser
  navigator: ->
    hash = {}
    hash['appCodeName'] = navigator.appCodeName
    hash['appName'] = navigator.appName
    hash['appVersion'] = navigator.appVersion
    hash['cookieEnabled'] = navigator.cookieEnabled
    hash['doNotTrack'] = navigator.doNotTrack
    hash['hardwareConcurrency'] = navigator.hardwareConcurrency
    hash['javaEnabled'] = navigator.javaEnabled() if navigator.javaEnabled?
    hash['language'] = navigator.language
    hash['languages'] = navigator.languages
    hash['onLine'] = navigator.onLine
    hash['platform'] = navigator.platform
    hash['plugins'] = @plugins()
    hash['product'] = navigator.product
    hash['userAgent'] = navigator.userAgent
    hash['vendor'] = navigator.vendor
    hash

  plugins: ->
    (plugin.name for plugin in navigator.plugins)

  # colorDepth - number of bits used to display one color
  # pixelDepth - pixel depth of the screen
  screen: ->
    hash = {}
    hash['availHeight'] = screen.availHeight
    hash['availLeft'] = screen.availLeft
    hash['availTop'] = screen.availTop
    hash['availWidth'] = screen.availWidth
    hash['colorDepth'] = screen.colorDepth
    hash['height'] = screen.height
    hash['pixelDepth'] = screen.pixelDepth
    hash['width'] = screen.width
    hash

  time: ->
    hash = {}
    hash['timeOpened'] = new Date()
    hash['timezoneName'] = Intl.DateTimeFormat().resolvedOptions().timeZone
    hash['timezoneOffset'] = new Date().getTimezoneOffset()
    hash

window.browserInfo = new BrowserInfo
