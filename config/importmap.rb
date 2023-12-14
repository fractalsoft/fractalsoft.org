# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "intl-tel-input", to: "https://ga.jspm.io/npm:intl-tel-input@18.3.3/index.js", preload: true
pin "turbolinks", to: "https://ga.jspm.io/npm:turbolinks@5.2.0/dist/turbolinks.js"
pin_all_from "app/javascript/fractalsoft", under: "fractalsoft"
