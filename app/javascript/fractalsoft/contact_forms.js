export function initContactForms() {
  var mapButtons = document.querySelectorAll('.btn-map');

  mapButtons.forEach(function (button) {
    if (button.dataset.mapInit === "true") return;
    button.dataset.mapInit = "true";

    button.addEventListener('click', function () {
      var targetId = '#' + button.getAttribute('data-target');
      mapButtons.forEach(function (btn) {
        btn.classList.remove('btn-active');
      });
      button.classList.add('btn-active');
      document.querySelectorAll('iframe.map').forEach(function (iframe) {
        iframe.classList.add('hidden');
      });
      var map = document.querySelector(targetId);
      if (!map) return;
      map.classList.remove('hidden');
      if (map.dataset.loaded !== 'true' && map.getAttribute('data-src')) {
        map.src = map.getAttribute('data-src');
        map.dataset.loaded = 'true';
      }
    });
  });

  var contactForm = document.getElementById('contact_form');
  if (!contactForm) return;
  if (contactForm.dataset.browserInfoInit === "true") return;

  contactForm.dataset.browserInfoInit = "true";
  var browserInfoInput = document.getElementById('contact_form_browser_info');
  if (browserInfoInput && window.browserInfo) {
    browserInfoInput.value = '' + window.browserInfo.json();
  }
}

document.addEventListener('turbolinks:before-cache', function () {
  document.querySelectorAll('.btn-map').forEach(function (button) {
    delete button.dataset.mapInit;
  });
  var contactForm = document.getElementById('contact_form');
  if (contactForm) delete contactForm.dataset.browserInfoInit;
});
