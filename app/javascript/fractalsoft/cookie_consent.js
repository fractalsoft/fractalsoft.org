const STORAGE_KEY = "cookie_consent";
const ACCEPTED = "accepted";
const REJECTED = "rejected";
const GA_ID = "G-NKMWEXWYK9";

function readConsent() {
  try {
    return localStorage.getItem(STORAGE_KEY);
  } catch (error) {
    return null;
  }
}

function writeConsent(value) {
  try {
    localStorage.setItem(STORAGE_KEY, value);
  } catch (error) {
    // Ignore storage failures (private mode, blocked storage, etc.)
  }
}

function isAnalyticsCookie(name) {
  return (
    name === "_ga" ||
    name === "_gid" ||
    name === "_gat" ||
    name.indexOf("_ga_") === 0 ||
    name.indexOf("_gcl_") === 0 ||
    name.indexOf("_gac_") === 0
  );
}

function isLocalHostname(hostname) {
  return (
    hostname === "localhost" ||
    hostname === "127.0.0.1" ||
    hostname === "[::1]" ||
    /^\d{1,3}(?:\.\d{1,3}){3}$/.test(hostname)
  );
}

function analyticsCookieDomains() {
  var hostname = window.location.hostname;

  // Browsers treat localhost/IP cookies as host-only. Passing Domain=localhost
  // is ignored or rejected, so only expire without a Domain attribute.
  if (isLocalHostname(hostname)) {
    return [""];
  }

  var domains = ["", hostname];
  var parts = hostname.split(".");
  while (parts.length >= 2) {
    var domain = parts.join(".");
    domains.push(domain);
    domains.push("." + domain);
    parts.shift();
  }

  return domains.filter(function (domain, index, list) {
    return list.indexOf(domain) === index;
  });
}

function expireCookie(name, domain) {
  var paths = ["/", window.location.pathname || "/"];
  var secure = window.location.protocol === "https:";

  paths
    .filter(function (path, index, list) {
      return list.indexOf(path) === index;
    })
    .forEach(function (path) {
      var base =
        name +
        "=; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT; Path=" +
        path;

      [base, base + "; SameSite=Lax"].forEach(function (value) {
        if (secure) value += "; Secure";
        if (domain) value += "; Domain=" + domain;
        document.cookie = value;
      });
    });
}

function disableGoogleAnalytics() {
  window["ga-disable-" + GA_ID] = true;
}

function enableGoogleAnalytics() {
  window["ga-disable-" + GA_ID] = false;
}

function clearAnalyticsCookies() {
  var names = document.cookie
    .split(";")
    .map(function (entry) {
      return entry.split("=")[0].trim();
    })
    .filter(Boolean)
    .filter(isAnalyticsCookie);

  ["_ga", "_gid", "_gat", "_ga_NKMWEXWYK9"].forEach(function (name) {
    if (names.indexOf(name) === -1) names.push(name);
  });

  var domains = analyticsCookieDomains();
  names.forEach(function (name) {
    domains.forEach(function (domain) {
      expireCookie(name, domain);
    });
  });
}

function googleConsentState(accepted) {
  var state = accepted ? "granted" : "denied";

  return {
    ad_storage: state,
    ad_user_data: state,
    ad_personalization: state,
    analytics_storage: state
  };
}

function applyGoogleConsent(accepted) {
  if (typeof gtag !== "function") return;

  gtag("consent", "update", googleConsentState(accepted));
}

function trackAnalyticsPageView() {
  if (typeof gtag !== "function") return;
  if (readConsent() !== ACCEPTED) return;
  if (window["ga-disable-" + GA_ID]) return;

  // Re-run config after grant so GA can write cookies and send a hit.
  // Turbolinks navigations also need an explicit page_view.
  gtag("config", GA_ID, {
    page_path: window.location.pathname + window.location.search,
    page_location: window.location.href,
    page_title: document.title
  });
}

function banner() {
  return document.getElementById("js-cookie-banner");
}

function updateBannerStatus() {
  var status = document.getElementById("js-cookie-banner-status");
  if (!status) return;

  var consent = readConsent();
  var label = null;

  if (consent === ACCEPTED) {
    label = status.dataset.statusAccepted;
  } else if (consent === REJECTED) {
    label = status.dataset.statusRejected;
  }

  if (label) {
    status.textContent = label;
    status.classList.remove("hidden");
  } else {
    status.textContent = "";
    status.classList.add("hidden");
  }
}

function showBanner() {
  var element = banner();
  if (!element) return;

  updateBannerStatus();
  element.classList.remove("hidden");

  var focusTarget = element.querySelector(".js-cookie-reject, .js-cookie-accept");
  if (focusTarget) focusTarget.focus();
}

function hideBanner() {
  var element = banner();
  if (!element) return;
  element.classList.add("hidden");
}

function dispatchConsent(value) {
  document.dispatchEvent(
    new CustomEvent("cookie-consent:change", { detail: { value: value } })
  );
}

function acceptCookies() {
  writeConsent(ACCEPTED);
  enableGoogleAnalytics();
  applyGoogleConsent(true);
  trackAnalyticsPageView();
  hideBanner();
  dispatchConsent(ACCEPTED);
}

function rejectCookies() {
  writeConsent(REJECTED);
  disableGoogleAnalytics();
  applyGoogleConsent(false);
  clearAnalyticsCookies();
  hideBanner();
  dispatchConsent(REJECTED);
}

function bindBanner() {
  var element = banner();
  if (!element || element.dataset.bound === "true") return;

  element.dataset.bound = "true";

  var acceptButton = element.querySelector(".js-cookie-accept");
  var rejectButton = element.querySelector(".js-cookie-reject");

  if (acceptButton) {
    acceptButton.addEventListener("click", acceptCookies);
  }
  if (rejectButton) {
    rejectButton.addEventListener("click", rejectCookies);
  }
}

function bindSettingsTriggers() {
  if (document.documentElement.dataset.cookieSettingsBound === "true") return;
  document.documentElement.dataset.cookieSettingsBound = "true";

  document.addEventListener("click", function (event) {
    var trigger = event.target.closest(".js-cookie-settings");
    if (!trigger) return;

    event.preventDefault();
    showBanner();
  });
}

function initCookieConsent() {
  bindBanner();
  bindSettingsTriggers();

  var consent = readConsent();
  if (consent === ACCEPTED || consent === REJECTED) {
    if (consent === REJECTED) {
      disableGoogleAnalytics();
      clearAnalyticsCookies();
    } else {
      enableGoogleAnalytics();
    }

    applyGoogleConsent(consent === ACCEPTED);
    hideBanner();
    dispatchConsent(consent);
    return;
  }

  showBanner();
}

document.addEventListener("turbolinks:load", function () {
  initCookieConsent();

  // Skip the first load: head gtag('config') already sent a hit when allowed.
  // Later Turbolinks navigations need an explicit page_view.
  if (window.__cookieConsentPageViewReady) {
    trackAnalyticsPageView();
  } else {
    window.__cookieConsentPageViewReady = true;
  }
});
document.addEventListener("DOMContentLoaded", initCookieConsent);

export { ACCEPTED, REJECTED, STORAGE_KEY, readConsent };
