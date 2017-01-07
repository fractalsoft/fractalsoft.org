jQuery ->
  $('.btn-map').click ->
    target = $(@).data('target')
    $('.btn-map').removeClass('active')
    $(@).addClass('active')
    $('iframe.map').addClass('map-display-none')
    $(target).removeClass('map-display-none')

  $('#contact_form').ready ->
    $('#contact_form_browser_info').val('' + browserInfo.json())
