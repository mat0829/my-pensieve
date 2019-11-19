class Memory < ApplicationRecord
    belongs_to :user
    has_many :memory_emotions
    has_many :emotions, through: :memory_emotions
    has_many :memory_players
    has_many :players, through: :memory_players

    def emotions_attributes=(emotion_attributes)
      emotion_attributes.values.each do |emotion_attribute|
        emotion = Emotion.find_or_create_by(emotion_attribute)
        self.emotions << emotion
      end
    end
end
