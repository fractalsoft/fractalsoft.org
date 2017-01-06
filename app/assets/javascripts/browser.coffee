class BrowserInfo
  constructor: ->
    @js = {}

  update: ->
    @js['javaEnabled'] = navigator.javaEnabled()
    @js['appName'] = navigator.appName       # full browser name
    @js['appVersion'] = navigator.appVersion # version of the browser
    @js['onLine'] = navigator.onLine # is user currently connected to the Internet
    @js['platform'] = navigator.platform     # system platform
    @js['userAgent'] = navigator.userAgent   # user-agent for the  browser
    @js['language'] = navigator.language     # language the primary browser
    @js['vendor'] = navigator.vendor         # brand name of the browser
    @js['cookieEnabled'] = navigator.cookieEnabled # cookies are enabled

  json: ->
    @update()
    JSON.stringify(@js)

window.browserInfo = new BrowserInfo
