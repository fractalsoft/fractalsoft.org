# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "leaflet", to: "https://ga.jspm.io/npm:leaflet@1.9.4/dist/leaflet-src.js"
pin "buffer", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/buffer.js"
pin "fs", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js"
pin "path", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/path.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "source-map-js", to: "https://ga.jspm.io/npm:source-map-js@1.0.2/source-map.js"
pin "url", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js"
pin "jquery", to: "https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@7.0.7-2/app/assets/javascripts/activestorage.esm.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.7-2/lib/assets/compiled/rails-ujs.js"
pin "turbolinks", to: "https://ga.jspm.io/npm:turbolinks@5.2.0/dist/turbolinks.js"
pin_all_from "app/javascript/fractalsoft", under: "fractalsoft"
