# Pin npm packages by running ./bin/importmap

pin "application", preload: false
pin "intl-tel-input", preload: false # @24.6.0
pin "turbolinks", to: "https://ga.jspm.io/npm:turbolinks@5.2.0/dist/turbolinks.js", preload: false
pin_all_from "app/javascript/fractalsoft", under: "fractalsoft", preload: false
