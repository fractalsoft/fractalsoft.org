import intlTelInput from 'intl-tel-input';

document.addEventListener('turbolinks:load', function() {
  var input_phone = document.querySelector('.js-phone-input');
  var input_country_code = document.querySelector('.js-phone-country-code');
  var input_country_iso2 = document.querySelector('.js-phone-country-iso2');

  var iti = intlTelInput(input_phone, {
    separateDialCode: true,
    initialCountry: "auto",
    geoIpLookup: function(callback) {
      fetch("https://ipapi.co/json")
        .then(function(res) { return res.json(); })
        .then(function(data) { callback(data.country_code); })
        .catch(function() { callback("us"); });
    }
  });

  input_phone.addEventListener('countrychange', function(e) {
    input_country_code.value = iti.getSelectedCountryData().dialCode;
    input_country_iso2.value = iti.getSelectedCountryData().iso2;
  });
});
