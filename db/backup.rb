User.create!([
  {username: "mat0829", email: "example@example.com", password_digest: "password", image: nil, uid: nil}
])
Memory.create!([
  {title: "There are no heroes...in life, the monsters win.", content: "Incidunt sint enim. Aliquam ratione voluptatibus. Ipsam qui vero. Similique autem repellat. Voluptatem et nobis. Aut sint vel. Ab omnis tempore. In et non. Suscipit nulla perspiciatis. Sit aperiam id.", user_id: 1},
  {title: "All dwarfs are bastards in their father's eyes", content: "Illum non cupiditate. Quo ab quia. Enim labore magnam. Eligendi eum non. Harum optio eum. Aut ea aut. Itaque doloribus minus. Aut praesentium rerum. Molestiae aut sapiente. Occaecati reprehenderit impedit.", user_id: 1},
  {title: "Winter is coming.", content: "Cupiditate harum dolor. Necessitatibus voluptas suscipit. Corporis optio aperiam. Quis nesciunt officiis. Est voluptatibus quia. Eligendi illo natus. Officia qui iusto. Qui ut est. Aut quaerat quia. Nam perferendis id.", user_id: 1},
  {title: "Hodor? Hodor.", content: "Et saepe distinctio. Hic reprehenderit perspiciatis. Quas omnis ipsam. Quasi animi est. Adipisci rem suscipit. Quia exercitationem ducimus. Quidem magni doloribus. Iste ipsum maiores. Quas natus deserunt. Nesciunt inventore et.", user_id: 1},
  {title: "Knowledge could be more valuable than gold, more deadly than a dagger.", content: "Ut saepe et. Sit quia eos. Qui modi nisi. Consequatur ut nihil. Est incidunt dolores. Ab quo eligendi. Sint voluptate autem. Vitae sunt omnis. Inventore hic voluptatum. Architecto ullam qui.", user_id: 1},
  {title: "When the snows fall and the white winds blow, the lone wolf dies but the pack survives.", content: "Quidem sunt excepturi. Itaque doloribus adipisci. Ad pariatur quidem. Est nostrum tempora. Facilis voluptatum tenetur. Illum ipsam ea. Ut tempore ex. Provident voluptas dolor. Dolorum officia totam. Alias animi dolores.", user_id: 1},
  {title: "Never forget who you are. The rest of the world won't. Wear it like an armor and it can never be used against you.", content: "Corporis impedit nihil. Aliquid ipsa quia. Occaecati provident ipsa. Et sapiente eaque. Et eum sed. Consectetur quibusdam dolor. Id atque consequatur. Sed aut rem. Minima ipsum itaque. Assumenda ut aut.", user_id: 1},
  {title: "And I have a tender spot in my heart for cripples and bastards and broken things.", content: "Modi porro consequatur. Reiciendis aut vitae. Consequatur fuga non. Itaque doloribus temporibus. Dignissimos provident aperiam. Ab dolore illo. Ipsa exercitationem culpa. Id esse temporibus. Voluptatibus corrupti eveniet. Praesentium exercitationem aliquam.", user_id: 1},
  {title: "Fear cuts deeper than swords.", content: "Eius necessitatibus voluptatem. Neque maxime odio. Quia explicabo alias. Recusandae ut odit. Incidunt nam ullam. Aut at placeat. Aliquam aut enim. Voluptatem exercitationem similique. Tenetur quia in. Culpa minima ducimus.", user_id: 1},
  {title: "The North remembers.", content: "Sapiente totam deleniti. Eum eligendi ducimus. Laudantium repellendus reiciendis. Quaerat et labore. Eos laudantium sed. Fuga porro voluptatem. Nihil cumque blanditiis. Aut deserunt dolorum. Est earum fugit. Est quis et.", user_id: 1}
])
Emotion.create!([
  {name: "Joy"},
  {name: "Trust"},
  {name: "Fear"},
  {name: "Surprise"},
  {name: "Sadness"},
  {name: "Disgust"},
  {name: "Anger"},
  {name: "Anticipation"},
  {name: "Love"},
  {name: "Remorse"}
])
Player.create!([
  {name: "Tickler"},
  {name: "Danelle Lothston"},
  {name: "Gran Goodbrother"},
  {name: "Rolph Spicer"},
  {name: "Endrew Tarth"},
  {name: "Poetess"},
  {name: "Tywin Frey"},
  {name: "Brynden Tully"},
  {name: "Wynafrei Whent"},
  {name: "Yohn Farwynd"}
])
MemoryPlayer.create!([
  {memory_id: 1, player_id: 1},
  {memory_id: 3, player_id: 3},
  {memory_id: 4, player_id: 4},
  {memory_id: 5, player_id: 5},
  {memory_id: 6, player_id: 6},
  {memory_id: 7, player_id: 7},
  {memory_id: 8, player_id: 8},
  {memory_id: 9, player_id: 9},
  {memory_id: 10, player_id: 10},
  {memory_id: 2, player_id: 2}
])
MemoryEmotion.create!([
  {memory_id: 1, emotion_id: 10},
  {memory_id: 3, emotion_id: 8},
  {memory_id: 4, emotion_id: 7},
  {memory_id: 5, emotion_id: 6},
  {memory_id: 6, emotion_id: 5},
  {memory_id: 7, emotion_id: 4},
  {memory_id: 8, emotion_id: 3},
  {memory_id: 9, emotion_id: 2},
  {memory_id: 10, emotion_id: 1},
  {memory_id: 2, emotion_id: 9}
])
  
  puts "After seeding the database: "
  puts " - There are #{Memory.count} memories."
  puts " - There are #{Emotion.count} emotions."
  puts " - There are #{Player.count} people and/or pets."