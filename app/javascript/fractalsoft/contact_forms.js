document.addEventListener("turbolinks:load", function() {
  var mapButtons = document.querySelectorAll('.btn-map');

  mapButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      var targetId = '#' + button.getAttribute('data-target');
      mapButtons.forEach(function (btn) {
        btn.classList.remove('active');
      });
      button.classList.add('active');
      document.querySelectorAll('iframe.map').forEach(function (iframe) {
        iframe.classList.add('map-display-none');
      });
      document.querySelector(targetId).classList.remove('map-display-none');
    });
  });

  var contactForm = document.getElementById('contact_form');
  if (contactForm) {
    var browserInfoInput = document.getElementById('contact_form_browser_info');
    if (browserInfoInput) { browserInfoInput.value = '' + browserInfo.json(); }
  }
});
