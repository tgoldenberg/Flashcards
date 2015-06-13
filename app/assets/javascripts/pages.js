
$(function() {
  var signUp = $('.signup-wrapper');
  $('#signup, .modal-close').on('click', function(e) {
    e.preventDefault();
    if (signUp.hasClass('slideInDown')) {
      signUp.addClass('hidden').removeClass('slideInDown');
    } else {
      signUp.addClass('slideInDown').removeClass('hidden');
    }
  });
});
