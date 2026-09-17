const STORAGE_KEY = "cookie_consent";
const ACCEPTED = "accepted";
const REJECTED = "rejected";

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

function clearAnalyticsCookies() {
  document.cookie.split(";").forEach(function (entry) {
    var name = entry.split("=")[0].trim();
    if (name !== "_ga" && name !== "_gid" && name.indexOf("_ga_") !== 0) return;

    document.cookie = name + "=; Max-Age=0; path=/; SameSite=Lax";
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

function banner() {
  return document.getElementById("js-cookie-banner");
}

function showBanner() {
  var element = banner();
  if (!element) return;
  element.classList.remove("hidden");
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
  applyGoogleConsent(true);
  hideBanner();
  dispatchConsent(ACCEPTED);
}

function rejectCookies() {
  writeConsent(REJECTED);
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

function initCookieConsent() {
  bindBanner();

  var consent = readConsent();
  if (consent === ACCEPTED || consent === REJECTED) {
    applyGoogleConsent(consent === ACCEPTED);
    hideBanner();
    dispatchConsent(consent);
    return;
  }

  showBanner();
}

document.addEventListener("turbolinks:load", initCookieConsent);
document.addEventListener("DOMContentLoaded", initCookieConsent);

export { ACCEPTED, REJECTED, STORAGE_KEY, readConsent };
