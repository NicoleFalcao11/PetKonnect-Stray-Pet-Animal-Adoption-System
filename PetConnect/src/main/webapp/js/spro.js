/**
 * 
 */
 $('.product-image--list li').hover(function() {
  var url = $(this).children('img').attr('src');
  $('.item-selected').removeClass('item-selected');
  $(this).addClass('item-selected');
  $('#featured').attr('src', url);
});

$('#buy-toaster').click(function() {
  alert("BUY ME PLS!");
});