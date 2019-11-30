
Memory.create!([
  {title: "You’re a wizard, Harry.", content: "I'm a what? gasped Harry.\r\n\r\nA wizard, o' course, said Hagrid, sitting back down on the sofa, which groaned and sank even lower, \"an' a thumpin' good'un I'd say, once yeh've been trained up a bit. With a mum an' dad like yours, what else would yeh be?\r\n\r\n― J.K. Rowling, Harry Potter and the Sorcerer's Stone", user_id: 1},
  {title: "You’re a little scary sometimes, you know that?", content: "You’re a little scary sometimes, you know that? Brilliant…but scary. — Harry Potter and the Sorcerer's Stone", user_id: 1},
  {title: "You're just as sane as I am.", content: "Don't worry. You're just as sane as I am.[Lowering her upside-down magazine] I can see them too. You're just as sane as I am.", user_id: 1},
  {title: "We’ve all got both light and dark inside us.", content: "The world isn’t split into good people and Death Eaters. We’ve all got both light and dark inside us. What matters is the part we choose to act on.", user_id: 1},
  {title: "No post on Sundays.", content: "Uncle Vernon: Fine day Sunday. In my opinion, best day of the week. Why is that, Dudley?\r\n\r\nHarry: [when Dudley doesn't answer] Because there's no post on Sundays?\r\n\r\nUncle Vernon: Right you are, Harry! No \r\npost on Sundays. Hah!", user_id: 1},
  {title: "After all this time? Always.\"", content: "Dumbledore watched her fly away, and as her silvery glow faded he turned back to Snape, and his eyes were full of tears.\r\nAfter all this time?\r\nAlways,\" said Snape.", user_id: 1},
  {title: "Hermione pulled out her wand. Malfoy stepped backward.", content: "Have you ever seen anything quite as pathetic?\" said Malfoy. \"And he’s supposed to be our teacher!\r\nHarry and Ron both made furious moves toward Malfoy, but Hermione got there first - [SMACK!]\r\n\r\nShe had slapped Malfoy across the face with all the strength she could muster. Malfoy staggered. Harry, Ron, Crabbe, and Goyle stood flabbergasted as Hermione raised her hand again.\r\nDon’t you dare call Hagrid pathetic you foul—you evil...\r\nHermione!\" said Ron weakly and he tried to grab her hand as she swung it back.\r\nGet off Ron!\r\nHermione pulled out her wand. Malfoy stepped backward. Crabbe and Goyle looked at him for instructions, thoroughly bewildered.\r\nC’mon, Malfoy muttered, and in a moment, all three of them had disappeared into the passageway to the dungeons.\r\nHermione!\" Ron said again, sounding both stunned and impressed.\r\n\r\n― J.K. Rowling, Harry Potter and the Prisoner of Azkaban", user_id: 1},
  {title: "There are all kinds of courage.", content: "There are all kinds of courage, said Dumbledore, smiling. It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.  –The Philosopher’s Stone ", user_id: 1},
  {title: "We could all have been killed — or worse, expelled.", content: "I hope you're pleased with yourselves. We could all have been killed — or worse, expelled. Now if you don't mind, I'm going to bed. ― Harry Potter and the Sorcerer's Stone", user_id: 1},
  {title: "happiness can be found even in the darkest of times", content: "But you know, happiness can be found even in the darkest of times, if one only remembers to turn on the light. ― Harry Potter and the Prisoner of Azkaban", user_id: 1},
  {title: "It's wingardium leviOsa, not leviosAH.", content: "Ron: Wingardium LeviosAA!\r\nHermione: Stop! Stop! Stop! You're going to take someone's eye out! Besides, you're saying it wrong. It's LeviOsa, not LevioSA.\r\nRon: You do it then if you're so clever. Go on, go on.\r\nHermione: Wingardium Leviosa!", user_id: 1}
])

Emotion.create!([
  {name: "hopeful"},
  {name: "curious"},
  {name: "surprise"},
  {name: "awe"},
  {name: "love"},
  {name: "respect"},
  {name: "fear"},
  {name: "admiration"},
  {name: "Love"},
  {name: "joyful"},
  {name: "remorse"}
])

Player.create!([
  {name: "Me"},
  {name: "cheeby cheepkins"},
  {name: "Harry Potter"},
  {name: "Rubeus Hagrid"},
  {name: "Albus Dumbledore"},
  {name: "Severus Snape"},
  {name: "Luna Lovegood"},
  {name: "Ron Weasley"},
  {name: "Hermione Granger"},
  {name: "Sirius Black"},
  {name: "Vernon Dursley"}
])

MemoryPlayer.create!([
  {memory_id: 1, player_id: 3},
  {memory_id: 1, player_id: 4},
  {memory_id: 3, player_id: 7},
  {memory_id: 3, player_id: 3},
  {memory_id: 2, player_id: 8},
  {memory_id: 2, player_id: 9},
  {memory_id: 2, player_id: 3},
  {memory_id: 4, player_id: 10},
  {memory_id: 4, player_id: 3},
  {memory_id: 5, player_id: 11},
  {memory_id: 5, player_id: 3}
])

MemoryEmotion.create!([
  {memory_id: 1, emotion_id: 3},
  {memory_id: 1, emotion_id: 1},
  {memory_id: 2, emotion_id: 3},
  {memory_id: 3, emotion_id: 2},
  {memory_id: 2, emotion_id: 7},
  {memory_id: 2, emotion_id: 8},
  {memory_id: 4, emotion_id: 9},
  {memory_id: 4, emotion_id: 1},
  {memory_id: 5, emotion_id: 10},
  {memory_id: 6, emotion_id: 11},
  {memory_id: 7, emotion_id: 3}
])

puts "After seeding the database: "
puts " - There are #{Memory.count} memories."
puts " - There are #{Emotion.count} emotions."
puts " - There are #{Player.count} people and/or pets."