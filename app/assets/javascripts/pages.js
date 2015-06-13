
$(function() {
  $('#signup, .modal-close').on('click', function(e) {
    e.preventDefault();
    if ($('.signup-wrapper').hasClass('bounceIn')) {
      $('.signup-wrapper').hide();
      $('.signup-wrapper').removeClass('bounceIn');
    } else {
      $('.signup-wrapper').addClass('bounceIn');
      $('.signup-wrapper').show();
    }
  });
});
