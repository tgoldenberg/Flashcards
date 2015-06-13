
$(function() {
  var signUp = $('.signup-wrapper');
  var signIn = $('#sign-in-slide-down');
  var signInContent = $('.signin-wrapper');
  $('#signup, .signup, #signup-slide-down').on('click', function(e) {
    e.preventDefault();
    if (signUp.hasClass('slideInDown')) {
      signUp.addClass('hidden').removeClass('slideInDown');
    } else {
      signUp.addClass('slideInDown').removeClass('hidden');
    }
  });

  $('#sign-in-slide-down, .signin').on('click', function(e) {
    e.preventDefault();
    if (signInContent.hasClass('slideInDown')) {
      signInContent.addClass('hidden').removeClass('slideInDown');
    } else {
      signInContent.addClass('slideInDown').removeClass('hidden');
    }
  });

  var deck = $('.deck-holder');

  if (deck) {
    $('#deck0').addClass('active');
  }
});
