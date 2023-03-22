class BrowserInfo {
  constructor() {
    this.js = {};
  }

  update() {
    this.js['document'] = this.document();
    this.js['innerHeight'] = innerHeight;
    this.js['innerWidth'] = innerWidth;
    this.js['location'] = this.location();
    this.js['navigator'] = this.navigator();
    this.js['screen'] = this.screen();
    return this.js['time'] = this.time();
  }

  json() {
    this.update();
    return JSON.stringify(this.js);
  }

  document() {
    const hash = {};
    hash['cookie'] = document.cookie;
    hash['height'] = document.height;
    hash['referrer'] = document.referrer;
    hash['width'] = document.width;
    return hash;
  }

  location() {
    const hash = {};
    hash['hash'] = location.hash;
    hash['host'] = location.host;
    hash['hostname'] = location.hostname;
    hash['href'] = location.href;
    hash['origin'] = location.origin;
    hash['pathname'] = location.pathname;
    hash['port'] = location.port;
    hash['protocol'] = location.protocol;
    hash['search'] = location.search;
    return hash;
  }

  // appName - full browser name
  // appVersion - version of the browser
  // cookieEnabled - cookies are enabled
  // language - language the primary browser
  // onLine - is user currently connected to the Internet
  // platform - system platform
  // userAgent - user-agent for the  browser
  // vendor - brand name of the browser
  navigator() {
    const hash = {};
    hash['appCodeName'] = navigator.appCodeName;
    hash['appName'] = navigator.appName;
    hash['appVersion'] = navigator.appVersion;
    hash['cookieEnabled'] = navigator.cookieEnabled;
    hash['doNotTrack'] = navigator.doNotTrack;
    hash['hardwareConcurrency'] = navigator.hardwareConcurrency;
    if (navigator.javaEnabled != null) { hash['javaEnabled'] = navigator.javaEnabled(); }
    hash['language'] = navigator.language;
    hash['languages'] = navigator.languages;
    hash['onLine'] = navigator.onLine;
    hash['platform'] = navigator.platform;
    hash['plugins'] = this.plugins();
    hash['product'] = navigator.product;
    hash['userAgent'] = navigator.userAgent;
    hash['vendor'] = navigator.vendor;
    return hash;
  }

  plugins() {
    return (Array.from(navigator.plugins).map((plugin) => plugin.name));
  }

  // colorDepth - number of bits used to display one color
  // pixelDepth - pixel depth of the screen
  screen() {
    const hash = {};
    hash['availHeight'] = screen.availHeight;
    hash['availLeft'] = screen.availLeft;
    hash['availTop'] = screen.availTop;
    hash['availWidth'] = screen.availWidth;
    hash['colorDepth'] = screen.colorDepth;
    hash['height'] = screen.height;
    hash['pixelDepth'] = screen.pixelDepth;
    hash['width'] = screen.width;
    return hash;
  }

  time() {
    const hash = {};
    hash['timeOpened'] = new Date();
    hash['timezoneName'] = Intl.DateTimeFormat().resolvedOptions().timeZone;
    hash['timezoneOffset'] = new Date().getTimezoneOffset();
    return hash;
  }
}

window.browserInfo = new BrowserInfo;
