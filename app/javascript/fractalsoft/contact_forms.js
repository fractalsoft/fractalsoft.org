document.addEventListener("turbolinks:load", function() {
  $('.btn-map').click(function() {
    const target = '#' + $(this).data('target');
    $('.btn-map').removeClass('active');
    $(this).addClass('active');
    $('iframe.map').addClass('map-display-none');
    return $(target).removeClass('map-display-none');
  });

  return $('#contact_form').ready(() => $('#contact_form_browser_info').val('' + browserInfo.json()));
});
