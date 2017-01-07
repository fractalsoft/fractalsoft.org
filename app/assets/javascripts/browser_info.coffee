class BrowserInfo
  constructor: ->
    @js = {}

  update: ->
    @js['navigator'] = @navigator()
    @js['screen'] = @screen()

  json: ->
    @update()
    JSON.stringify(@js)

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
    hash['javaEnabled'] = navigator.javaEnabled()
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
    hash['availWidth'] = screen.availWidth
    hash['colorDepth'] = screen.colorDepth
    hash['height'] = screen.height
    hash['pixelDepth'] = screen.pixelDepth
    hash['width'] = screen.width
    hash

window.browserInfo = new BrowserInfo
