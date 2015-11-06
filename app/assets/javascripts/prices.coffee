sumPrices = ->
  sum = 0
  $('.sum').text(sum)

  $('.prices :checkbox').change (event) ->
    value = parseInt(event.target.value)
    sum += if event.target.checked then value else -value
    $('.sum').text(sum)

  $('.prices tr').click (event) ->
    if (event.target.type != 'checkbox')
      $(':checkbox', this).trigger('click')

$(document).ready(sumPrices)
$(document).on('page:load', sumPrices)
