// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import turbolinks from "turbolinks";

turbolinks.start();

import "fractalsoft/browser_info";
import "fractalsoft/lazy_iframe";

function loadConditionalScripts() {
  if (document.querySelector("#contact_form, .btn-map")) {
    import("fractalsoft/contact_forms").then(function (mod) {
      if (typeof mod.initContactForms === "function") mod.initContactForms();
    });
  }

  if (document.querySelector(".js-business-contact-form")) {
    import("fractalsoft/business_contact_forms").then(function (mod) {
      if (typeof mod.initBusinessContactForms === "function") {
        mod.initBusinessContactForms();
      }
    });
  }

  if (document.querySelector(".js-phone-input")) {
    import("fractalsoft/phone").then(function (mod) {
      if (typeof mod.initPhoneInput === "function") mod.initPhoneInput();
    });
  }
}

document.addEventListener("turbolinks:load", loadConditionalScripts);
