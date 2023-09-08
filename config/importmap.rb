# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "leaflet", to: "https://ga.jspm.io/npm:leaflet@1.9.4/dist/leaflet-src.js"
pin "jquery", to: "https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "turbolinks", to: "https://ga.jspm.io/npm:turbolinks@5.2.0/dist/turbolinks.js"
pin_all_from "app/javascript/fractalsoft", under: "fractalsoft"
