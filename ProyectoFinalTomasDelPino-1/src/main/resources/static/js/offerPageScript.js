$(document).ready(function() {
    $('.image-container').hover(
      function() {
        $(this).find('.btn-overlay').css('opacity', 1);
      },
      function() {
        $(this).find('.btn-overlay').css('opacity', 0);
      }
    );
  });