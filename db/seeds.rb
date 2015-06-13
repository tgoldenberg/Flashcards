# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
require 'pry'

QUESTION = "This spirit animals has the following behavior: "

BEHAVIORS = [
  "the messenger of the spirit world",
  "it's medicine includes swiftness, strength, courage, wisdom, keen sight, illumination of Spirit, healing, creation, and knowledge of magic.",
  "it is generally associated with the symbolic meaning of transformation",
  "it is considered a peace maker",
  "it represents elevation from earthly matters, tuning into emotional or spiritual",
  "it is symbolic of cleansing and renewal",
  "it is a symbol of balance, grace, and seeing into the future",
  "it is a complex animal and has had many different meanings attached to it throughout history, including protection, playfulness, and cooperation",
  "its symbolism is characterized by the association with the Earth and earth symbols of groundedness and patience",
  "it symbolizes creation and destruction and is the keeper and protector of all knowledge",
  "it is commonly associated with emotion, inner truth, and creativity.",
  "it represents the yearning to join with one's source",
  "it represents sexual energy and the drive behind life",
  "this animal represents trust, patience, and knowing the right moment to make a move",
  "it often symbolizes the trickster or joker, but is also associated with a deep magic of life and creation.",
  "its primary meaning is strength and confidence",
  "it means you are often resourceful and have a way of manifesting all the things you need in the present and for the future",
  "it is considered the earth father in Mayan tradition, and holds authority over the sacred power of and in the earth, and the animals who live upon it.",
  "it generally symbolizes joy and playfulness, as well as adaptability."
]

SKY_ANIMALS = {
  hawk: {
    url:     "https://s-media-cache-ak0.pinimg.com/236x/a4/85/74/a48574dbc66ecdedc21f231b708837eb.jpg",
    answer: "the messenger of the spirit world",
    description: "When you have the hawk as a spirit animal, you may have an inclination towards using the power of vision and intuition in your daily life. The hawk totem provides wisdom about seeing situations from a higher perspective, using the power of observation, and focusing on the task at hand. It’s a good companion to develop spiritual awareness.",
    deck_id: 1
  },

  eagle: {
    url:     "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/23/e5/Eagle%20(604x1087)%20(569x1024)%20(445x800).jpg?itok=lUvvo874",
    answer: "it's medicine includes swiftness, strength, courage, wisdom, keen sight, illumination of Spirit, healing, creation, and knowledge of magic.",
    description: "Eagle’s medicine includes swiftness, strength, courage, wisdom, keen sight, illumination of Spirit, healing, creation, knowledge of magic, ability to see hidden spiritual truths, rising above the material to see the spiritual, ability to see the overall pattern/big picture, connection to spirit guides and teachers and higher truths, great power and balance, dignity with grace, intuitive and creative spirit, respect for the boundaries of the regions, grace achieved through knowledge and hard work.",
    deck_id: 1
  },

  dragonfly: {
    url:     "https://s-media-cache-ak0.pinimg.com/236x/04/10/bf/0410bf6ec9f5218dc5bf7749fa6c599f.jpg",
    answer:   "it is generally associated with the symbolic meaning of transformation",
    description: "The dragonfly totem carries the wisdom of transformation and adaptability in life. As spirit animal, the dragonfly is connected to the symbolism of change and light. When the dragonfly shows up in your life, it may remind you to bring a bit more lightness and joy into your life. Those who have this animal as totem may be inclined to delve deep into their emotions and shine their true colors.",
    deck_id: 1

  },
  blue_heron: {
    url:     "https://s-media-cache-ak0.pinimg.com/236x/5e/09/22/5e09223107273ed701b865d99d364a4f.jpg",
    answer:   "it is considered a peace maker",
    description: "Heron people do no seem to need a lot of people in their life, nor do they feel pressured to keep up with the Joneses, or be traditional in their life roles. The only time they gather in colonies is during the breeding season. They stand out in their uniqueness, and they know how to snatch and take advantage of things and events that the average person would not even bother with.",
    deck_id: 1

  },
  butterfly: {
    url:     "http://www.learntarot.com/mebtfy.gif",
    answer:   "it represents elevation from earthly matters, tuning into emotional or spiritual",
    description: "The butterfly is one of the most emblematic totem animals symbolizing personal transformation. If you see the butterfly as your totem or spirit animal, pay attention to the areas in your life or personality that are in need of profound change or transformation. Perhaps, this animal totem guides you to be sensitive to your personal cycles of expansion and growth, as well as the beauty of life’s continuous unfolding. An important message carried by the spirit of the butterfly is about the ability to go through important changes with grace and lightness.",
    deck_id: 1

  },
  hummingbird: {
    url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTWyEItrSAxEY_4rPBcqJACoeez2EgMeBQPxjvEQ_lcngzvNuYD",
    answer: "it generally symbolizes joy and playfulness, as well as adaptability.",
    description: "The hummingbird spirit animal symbolizes the enjoyment of life and lightness of being. Those who have the hummingbird as a totem are invited to enjoy the sweetness of life, lift up negativity wherever it creeps in and express love more fully in their daily endeavors. This fascinating bird is capable of the most amazing feats despite its small size, such as traveling great distances or being able to fly backwards. By affinity with the hummingbird, those who have this bird as totem may be encouraged to develop their adaptability and resiliency while keeping a playful and optimistic outlook.",
    deck_id: 3

  }
}

WATER_ANIMALS = {
  frog: {
    url:     "http://www.mysticfamiliar.com/archive/divination_with_cards/images_tarot_angel_cards/16frog.JPG",
    answer: "it is symbolic of cleansing and renewal",
    description: "The frog as spirit animal or totem reminds us of the transient nature of our lives. As symbol of transition and transformation, this spirit animal supports us in times of change. Strongly associated with the water element, it connects us with the world of emotions and feminine energies, as well as the process of cleansing, whether it’s physical, emotional, or more spiritual or energetic.",
    deck_id: 2

  },
  swan: {
    url:     "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/f2/62/Swan_0.jpg?itok=gtwb8HMy",
    answer: "it is a symbol of grace and beauty",
    description: "The swan is one of the most powerful and ancient totems.  Even the word swan is one of the oldest names in the English language, coming from the Anglo-Saxons.  Most of swan’s associations come from its appearance—it is a graceful, white bird, and the largest of the waterfowl.  But swans are also powerful birds.  From this, they reflect the power and longevity that is possible when we awaken to the power and beauty within ourselves.  Swan is not only a widely known symbol, but also a very personal one to the individual.",
    deck_id: 2

  },
  dolphin: {
    url:     "http://www.tarotopia.com.au/sites/default/files/med%20cards294.jpg",
    answer: "it is a complex animal and has had many different meanings attached to it throughout history, including protection, playfulness, and cooperation",
    description: "The dolphin spirit animal represents harmony and balance. Dolphins are both highly intelligent and closely in tune with their instincts, striking a balance between the two states. Dolphins are also a symbol of protection and of resurrection. Their playful nature is a reminder that everyone needs to approach life with humor and joy. People who identify with the dolphin totem are usually peaceful and gentle, but with a deep inner strength.",
    deck_id: 2

  },
  turtle: {
    url:     "http://crowingcrone.files.wordpress.com/2011/06/turtle.jpg",
    answer: "its symbolism is characterized by the association with the Earth and earth symbols of groundedness and patience",
    description: "The turtle totem wisdom teaches us about walking our path in peace and sticking to it with determination and serenity. Slow moving on earth, yet also incredibly fast and agile in water, those who have the turtle as totem or spirit animal may be encouraged to take a break in their busy lives and look around or within themselves for more grounded, long-lasting solutions. Traditionally, the turtle is symbolic of the way of peace, whether it’s inviting us to cultivate peace of mind or a peaceful relationship with our environment.",
    deck_id: 2

  },
  alligator: {
    url:     "https://s-media-cache-ak0.pinimg.com/236x/66/3b/b8/663bb883ad2eff6f6b967b93f7ba2762.jpg",
    answer: "it symbolizes creation and destruction and is the keeper and protector of all knowledge",
    description: "Alligator/Crocodile’s medicine includes maternal protection, primal energies, connection to mother earth, protection from manipulation, understanding deceit, revenge through patience, initiation, understanding weather, access to ancient knowledge, power to survive.",
    deck_id: 2

  },
  whale: {
    url:     "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/d5/57/d55703d78baa00e36ca68cd0b0d30e19.jpg?itok=0uFIyQ9H",
    answer: "it is commonly associated with emotion, inner truth, and creativity.",
    description: "The whale spirit animal is the earth’s record keeper for all time. As a totem, the whale teaches you about listening to your inner voice, understanding the impact your emotions have on your everyday life, and following your own truth. When the whale enters your life, it may be time to closely examine where you are, the actions and emotions that have brought you to this point, and what you can do to alleviate existing drama and unrest and find peace. Those who have the whale as their animal totem are in touch with true reality. They are nurturers and go-getters who understand there is more to this life than meets the eye.",
    deck_id: 2

  },
  salmon: {
    url:     "https://angelsandcelestials.files.wordpress.com/2014/04/49-salmon.jpg",
    answer: "it represents the yearning to join with one's source",
    description: "The salmon’s wisdom includes – value of returning home to regenerate, swimming upstream through emotional waters to gain insight, understanding divination messages, rebirth of spiritual knowledge, wisdom.",
    deck_id: 2

  },

  otter: {
    url: "http://www.karmictools.com/Divinations/images/8-Otter.JPG",
    answer: "if it is your spirit animal, you likely find everything interesting and have a lot of curiosity",
    description: "If Otter is your animal totem you take great pleasure in the success and happiness of others and will work untiringly to help others achieve that. You have no selfishness, are not self centered, or self driven and could never be mean to others. You are never unnecessarily critical in a vengeful way nor are you a gossip. You find purpose in supporting and enhancing the lives of others.",
    deck_id: 3
  }
}
LAND_ANIMALS = {
  horse: {
    url:    "http://www.learntarot.com/mehrse.gif",
    answer: "it represents sexual energy and the drive behind life",
    description: "The horse spirit animal symbolizes personal drive, passion and appetite for freedom. Among all the spirit animals, it is one that shows a strong motivation that carries one through life. The meaning of the horse varies depending on whether this animal spirit guide is represented as wild, tamed, moving freely or constrained.",
    deck_id: 3
  },

  opossom: {
    url: "https://s-media-cache-ak0.pinimg.com/236x/8f/9b/fc/8f9bfce1b7f8e05ceff9046a85802bb8.jpg",
    answer: "this animal represents trust, patience, and knowing the right moment to make a move",
    description: "You are being asked to lay low and blend into the fabric of your surroundings. Things are not entirely what they appear to be at this time so simply say nothing and do nothing. Allow yourself the space and time to see things for what they really are. Alternatively Opossum is letting you know that the universe is working behind the scenes to fulfill your dreams. Be patient, allow things to develop, and trust that you will know the exact moment to make your move. Take a passive stance in all that is happening around you.",
    deck_id: 3

  },
  bear: {
    url: "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/57/a8/Bear_2.jpg?itok=WDeVtbGv",
    answer: "its primary meaning is strength and confidence",
    description: "In the kingdom of spirit animals, the bear is emblematic of grounding forces and strength. This animal has been worshiped throughout time as a powerful totem, inspiring those who need it the courage to stand up against adversity. As a spirit animal in touch with the earth and the cycles of nature, it is a powerful guide to support physical and emotional healing.",
    deck_id: 3

  },

  jaguar: {
    url: "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/b6/ec/b6ecf5066f39830e1350341d842239d7.jpg?itok=ZvQLPjIe",
    answer: "it is considered the earth father in Mayan tradition, and holds authority over the sacred power of and in the earth, and the animals who live upon it.",
    description: "The Jaguar’s medicine includes seeing the roads within chaos and understanding the patterns of chaos, moving without fear in the darkness, moving in unknown places, shape shifting, psychic vision, facilitating soul work, empowering oneself, reclaiming power.",
    deck_id: 3

  },

  sqirrel: {
    url: "http://www.learntarot.com/mesqrl.gif",
    answer: "it means you are often resourceful and have a way of manifesting all the things you need in the present and for the future",
    description: "It is often a message for us to have more fun. Most likely we’ve been so busy taking life so seriously that we have forgotten that play is important too. On another note squirrel can also be signaling that we have to take a look at practical matters such as retirement, insurance, or even simple repairs. Are we adequately prepared? A visit from Squirrel could also indicate that you need lighten your load of things that are unnecessary. Things that you have gathered in the past and may be cluttering your life such as thoughts, worries, and stresses.",
    deck_id: 3

  },

  rabbit: {
    url: "https://s-media-cache-ak0.pinimg.com/236x/0c/70/a9/0c70a98c5ba29aa94713e6b73dae7fd9.jpg",
    answer: "it's medicine is also very positive, showing us how to attract love, abundance, health, and a warm, dry burrow.",
    description: "Rabbits are guides into the shadow world, where our personal fears lie. When the rabbit shows up it is time to examine those deep reflexive fears that hold you back from growing. Do you keep bounding for the safety of your old patterns every time something new or challenging presents itself? If the answer is yes, the rabbit asks you to face your fears with compassion for yourself. You must accept that it is part of human nature to feel fear at times, but also believe that our fears need not paralyze our growth and movement.",
    deck_id: 3

  },

  coyote: {
    url: "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/24/1a/241a501174dc8333c9ae6d98e8301ece.jpg?itok=T3P-TPW2",
    answer: "it often symbolizes the trickster or joker, but is also associated with a deep magic of life and creation.",
    description: "The coyote totem is strikingly paradoxical and is hard to categorize. It’s a teacher of hidden wisdom with a sense of humor, so the messages of the coyote spirit animal may paradoxically appear in the form of a joke or trickery. Don’t be tricked by the foolish appearances. The spirit of the coyote may remind you to not take things too seriously and bring more balance between wisdom and playfulness.",
    deck_id: 3

  }
}

DECKS = ["sky", "land", "water"]

DECKS.each do |deck|
  DefaultDeck.create(name: deck)
end

DefaultDeck.all.each do |deck|
  case deck.name
  when "sky"
    then SKY_ANIMALS.each do |animal, value|

      Card.create(name: animal.to_s,
                  answer: value[:answer],
                  image_url: value[:url],
                  description: value[:description],
                  deck_id: deck.id)
    end
  when "land"
    then LAND_ANIMALS.each do |animal, value|
      Card.create(name: animal.to_s, answer: value[:answer], image_url: value[:url], description: value[:description], deck_id: deck.id)
    end
  when "water"
    then WATER_ANIMALS.each do |animal, value|
      Card.create(name: animal.to_s, answer: value[:answer], image_url: value[:url], description: value[:description], deck_id: deck.id)
    end
  end
end

BEHAVIORS.each do |behavior|
  CardBehavior.create(name: behavior)
end
