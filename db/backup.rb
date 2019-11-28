  {username: "Mat Anderson", email: "matandersonlv@hotmail.com", password_digest: "$2a$12$M4T5jtWqYa6GCLvp9TB/RekLNfukSYsg5S1OhwrY3pRVcOKKxoE3m", image: "http://graph.facebook.com/v2.10/3206325439438385/picture", uid: "3206325439438385"},
  {username: "mat0829", email: "example@example.com", password_digest: "$2a$12$EKeVEQoj.Mou4SNyjlSLNOFpoEDuXHo2AqS02OR0iK8kkhnVoRtRe", image: nil, uid: nil}
])
Memory.create!([
  {title: "Created a new Memory 1", content: "Content for Memory 1", user_id: 1},
  {title: "Words are in my not-so-humble opinion, the most inexhaustible form of magic we have, capable both of inflicting injury and remedying it.", content: "Veniam iusto repudiandae. Eos reiciendis adipisci. Molestias doloremque rem. Laboriosam dicta eos. Harum qui ipsa. Ut laboriosam et. Magni sunt animi. Accusantium illum et. Molestiae porro facilis. Impedit sequi est.", user_id: 1},
  {title: "Of course it is happening inside your head, Harry, but why on earth should that mean that it is not real?", content: "Architecto ut facilis. Optio eius magnam. Excepturi facilis aliquam. Odit ut porro. In sed fugiat. Accusantium minus voluptatem. Cumque sunt eos. Dicta odit dolores. Molestias ratione pariatur. Ratione qui qui.", user_id: 1},
  {title: "You sort of start thinking anything’s possible if you’ve got enough nerve.", content: "Autem nesciunt veritatis. Porro doloribus eos. Delectus aperiam velit. Eos saepe voluptate. Eveniet consequatur debitis. Quis et itaque. Ipsam dicta quidem. Sunt numquam quia. Reiciendis eos voluptatem. Nam rem quis.", user_id: 1},
  {title: "Dark and difficult times lie ahead. Soon we must all face the choice between what is right and what is easy.", content: "Maxime accusamus delectus. In numquam repellendus. Odit quia suscipit. Nisi rerum non. Magnam et libero. Dolorem optio a. Fugiat ad earum. Et laudantium est. Alias autem odit. Aut dolor eum.", user_id: 1},
  {title: "It’s wingardium leviOsa, not leviosAH.", content: "Sint deleniti ut. In velit nisi. Quod voluptas quia. Dicta sed corporis. Sequi ut nesciunt. Repellat molestiae quasi. Molestiae quis laboriosam. Dolor illum vel. Atque necessitatibus quas. Impedit quia corrupti.", user_id: 1},
  {title: "It is the unknown we fear when we look upon death and darkness, nothing more.", content: "Voluptatibus aliquid ut. Ipsa doloremque iure. Ut quis at. Sed molestiae et. Neque voluptatem quia. Consequatur aut pariatur. Et iure impedit. Tenetur aut sed. Veritatis non magnam. Ut quidem dolores.", user_id: 1},
  {title: "It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.", content: "Optio illo error. Et voluptates eius. Aut quisquam enim. Consequuntur sit quas. Non doloremque nemo. Qui architecto minus. Inventore perspiciatis et. Magnam quasi ea. Minima corrupti porro. Eius autem et.", user_id: 1},
  {title: "After all this time? Always.", content: "Itaque vitae totam. Ut illo eum. Architecto vitae ad. Ut consequuntur numquam. Ea veritatis doloremque. Consequuntur facilis quos. Quam provident cumque. Et odio nostrum. Sit et eaque. Eius ipsum et.", user_id: 1},
  {title: "To the well-organized mind, death is but the next great adventure.", content: "Nihil cumque odio. Dolores alias non. Perferendis assumenda mollitia. Praesentium voluptas tempora. Deleniti consequatur a. Repudiandae ea sit. Iusto provident eius. Qui ut adipisci. Aut quia voluptatem. Accusantium aut ipsam.", user_id: 1}
])
Emotion.create!([
  {name: "hopeful"},
  {name: "Joy"},
  {name: "Trust"},
  {name: "Fear"},
  {name: "Surprise"},
  {name: "Sadness"},
  {name: "Disgust"},
  {name: "Anger"},
  {name: "Anticipation"},
  {name: "Love"}
])
Player.create!([
  {name: "Me"},
  {name: "Buckbeak"},
  {name: "Dean Thomas"},
  {name: "Roger Davies"},
  {name: "Emmeline Vance"},
  {name: "Lucius Malfoy"},
  {name: "Lily Potter"},
  {name: "Quirinus Quirrell"},
  {name: "Xenophilius Lovegood"},
  {name: "Blaise Zabini"}
])
MemoryPlayer.create!([
  {memory_id: 1, player_id: 1},
  {memory_id: 2, player_id: 2},
  {memory_id: 3, player_id: 3},
  {memory_id: 4, player_id: 4},
  {memory_id: 5, player_id: 5},
  {memory_id: 6, player_id: 6},
  {memory_id: 7, player_id: 7},
  {memory_id: 8, player_id: 8},
  {memory_id: 9, player_id: 9},
  {memory_id: 10, player_id: 10}
])
MemoryEmotion.create!([
  {memory_id: 1, emotion_id: 1},
  {memory_id: 2, emotion_id: 11},
  {memory_id: 3, emotion_id: 10},
  {memory_id: 4, emotion_id: 9},
  {memory_id: 5, emotion_id: 8},
  {memory_id: 6, emotion_id: 7},
  {memory_id: 7, emotion_id: 6},
  {memory_id: 8, emotion_id: 5},
  {memory_id: 9, emotion_id: 4},
  {memory_id: 10, emotion_id: 3}
])

puts "After seeding the database: "
puts " - There are #{Memory.count} memories."
puts " - There are #{Emotion.count} emotions."
puts " - There are #{Player.count} people and/or pets."User.create!([