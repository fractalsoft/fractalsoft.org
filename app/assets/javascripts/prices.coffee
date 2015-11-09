sumPrices = ->
  sum = 0
  multiplier = 1
  $('.sum').text(0)

  checkedToRow = (checkbox) ->
    checked = checkbox.checked
    row = checkbox.closest("tr")
    if checked then $(row).addClass("checked") else $(row).removeClass("checked")

  unselectOtherRows = (checkbox) ->
    $('.multiplier:checkbox').toArray().forEach (otherCheckbox) ->
      unless otherCheckbox==checkbox
        $(otherCheckbox).closest("tr").removeClass("checked")
        otherCheckbox.checked = false

  updateMultiplier = (checkbox) ->
    multiplier = if checkbox.checked then parseFloat(checkbox.value) else 1

  updateSum = (checkbox) ->
    value = parseInt(checkbox.value)
    sum += if checkbox.checked then value else -value

  $('.price:checkbox').change (event) ->
    checkedToRow(event.target)
    updateSum(event.target)
    $('.sum').text(sum * multiplier)

  $('.multiplier:checkbox').change (event) ->
    checkedToRow(event.target)
    unselectOtherRows(event.target)
    updateMultiplier(event.target)
    $('.sum').text(sum * multiplier)

  $('.prices tr').click (event) ->
    unless event.target.type == 'checkbox'
      $(':checkbox', this).trigger('click')

$(document).ready(sumPrices)
$(document).on('page:load', sumPrices)
