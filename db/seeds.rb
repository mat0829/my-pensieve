
emotions = Emotion.create!([{ name: 'joy'}, { name: 'trust' }, { name: 'fear' }, { name: 'surprise' }, 
  { name: 'sadness' }, { name: 'disgust' }, { name: 'anger' }, { name: 'anticipation' }, 
  { name: 'love' }, { name: 'remorse' }])

10.times do |n|
  title       = Faker::Movies::HarryPotter.unique.spell
  content     = Faker::Lorem.paragraph(sentence_count: 10)
  user_id     = "1"

  memory = Memory.create!(
    title:        title,
    content:      content,
    user_id:      user_id
  )

  player = Player.create!(
    name:     Faker::Movies::HarryPotter.unique.character.sub(/^[A-Z]/, &:downcase)
  )

  memory.emotions << emotions.pop
  memory.players << player
end

puts "After seeding the database: "
puts " - There are #{Memory.count} memories."
puts " - There are #{Emotion.count} emotions."
puts " - There are #{Player.count} people and/or pets."