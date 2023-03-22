const sumPrices = function() {
  let sum = 0;
  let multiplier = 1;
  $('.sum').text(0);

  const checkedToRow = function(checkbox) {
    const row = checkbox.closest("tr");
    if (checkbox.checked) {
      return $(row).addClass("checked");
    } else {
      return $(row).removeClass("checked");
    }
  };

  const unselectOtherRows = checkbox => $('.multiplier:checkbox').toArray().forEach(function(otherCheckbox) {
    if (otherCheckbox !== checkbox) {
      $(otherCheckbox).closest("tr").removeClass("checked");
      return otherCheckbox.checked = false;
    }
  });

  const updateMultiplier = checkbox => multiplier = checkbox.checked ? parseFloat(checkbox.value) : 1.0;

  const updateSum = function(checkbox) {
    const value = parseInt(checkbox.value);
    return sum += checkbox.checked ? value : -value;
  };

  $('.price:checkbox').change(function(event) {
    checkedToRow(event.target);
    updateSum(event.target);
    return $('.sum').text(sum * multiplier);
  });

  $('.multiplier:checkbox').change(function(event) {
    checkedToRow(event.target);
    unselectOtherRows(event.target);
    updateMultiplier(event.target);
    return $('.sum').text(sum * multiplier);
  });

  return $('.pricelist tr').click(function(event) {
    if (event.target.type !== 'checkbox') {
      return $(':checkbox', this).trigger('click');
    }
  });
};

jQuery(() => sumPrices());
