function loadLazyIframe(iframe) {
  if (!iframe || iframe.dataset.loaded === 'true') return;

  var src = iframe.getAttribute('data-src');
  if (!src) return;

  iframe.src = src;
  iframe.dataset.loaded = 'true';
}

function initLazyIframes() {
  var iframes = document.querySelectorAll('iframe.js-lazy-iframe[data-src]');
  if (!iframes.length) return;

  if ('IntersectionObserver' in window) {
    var observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;

        loadLazyIframe(entry.target);
        observer.unobserve(entry.target);
      });
    }, { rootMargin: '200px 0px' });

    iframes.forEach(function (iframe) {
      if (iframe.dataset.lazyObserved === 'true') return;
      iframe.dataset.lazyObserved = 'true';
      observer.observe(iframe);
    });
  } else {
    iframes.forEach(loadLazyIframe);
  }

  document.querySelectorAll('.btn-map').forEach(function (button) {
    if (button.dataset.lazyMapInit === 'true') return;

    button.dataset.lazyMapInit = 'true';
    button.addEventListener('click', function () {
      var targetId = button.getAttribute('data-target');
      if (!targetId) return;

      loadLazyIframe(document.querySelector('#' + targetId));
    });
  });
}

document.addEventListener('turbolinks:load', initLazyIframes);
document.addEventListener('turbolinks:before-cache', function () {
  document.querySelectorAll('iframe.js-lazy-iframe').forEach(function (iframe) {
    delete iframe.dataset.lazyObserved;
  });
  document.querySelectorAll('.btn-map').forEach(function (button) {
    delete button.dataset.lazyMapInit;
  });
});
