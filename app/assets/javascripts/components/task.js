$(document).on('turbolinks:load', function () {
  var $checkBox = $('.check-box');
  $checkBox.each(function(i) {
    if ($(this).prop("checked")) {
      $(this).parent('.span1').addClass('strikethrough');
    };
  });
});
