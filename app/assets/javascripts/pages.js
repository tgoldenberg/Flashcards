
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
  var deck1 = $('#deck-image0');
  var deck2 = $('#deck-image1');
  var deck3 = $('#deck-image2');
  var titles = ["Water Spirit Animals", "Land Spirit Animals", "Sky Spirit Animals"];
  var descriptions = [
    "Water animal totems are as vast with meaning as the sea itself. Water is a powerful symbol in itself. It's a sign of cleansing, freedom and mobility. Most significantly, water as a symbol is a universal expression of the unconscious. Therefore, water animal totems help us reveal and identify our hidden thoughts or actions. When these creatures find their way into our lives they need to be honored. If we pay attention, they will aid us in identifying our hidden motives, motives that aren't quite healthy for us. Even better, by observing and being open our water animal totems, we learn the ways of simpler, more positive paths of thought, thus replacing the hidden negative ones.",
    "Many cultures, including the Native Americans, believe that if we put our ear to the ground, we can hear Mother Earth's heartbeat. Land animal totems are keenly aware of this heartbeat – and in fact, are said to walk in time with the beat of the Earth's heart. Consequently these land animal symbol meanings relate to intuitition, awareness, and cognizance. Additionally, this animal group represents being grounded, and stable both mentally and physically.",
    "Air Animal Totems have a penchant for assisting us in matters of higher knowledge. Air being the most ethereal of elements, it's understandable that the creatures who inhabit it are able to lend the best understanding of it's invisible ways. Closest to the heavens, air animals are our best allies as they herald our desires to the very gods in the skies. Air animal totems are also symbols of strength (both physical and mental) and sovereignty. Very important traits, particularly when we are experiencing new transitions or surroundings in our lives. If air animal totems are catching your attention, you should feel very heartened by their presence. Allow their spirit to boost your confidence, and remind you that the ultimate power is within this present, unseen moment. Air animals are good omens, and their appearance is like a wink from god."
  ];

  $('#deck0 >').on('click', function() {
    $('.deck-title').html(titles[2]);
    $('.deck-content').html(descriptions[2]);
  });
  $('#deck1 >').on('click', function() {
    $('.deck-title').html(titles[1]);
    $('.deck-content').html(descriptions[1]);
  });
  $('#deck2 >').on('click', function() {
    $('.deck-title').html(titles[0]);
    $('.deck-content').html(descriptions[0]);
  });



});
