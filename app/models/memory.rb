class Memory < ApplicationRecord
    belongs_to :user
    has_many :memory_emotions
    has_many :emotions, through: :memory_emotions
    has_many :memory_players
    has_many :players, through: :memory_players

    def memory_title_capitalized
      title.capitalize
    end

    def emotions_attributes=(emotion_attributes)
      emotion_attributes.values.each do |emotion_attribute|
        if emotion_attribute[:name].present?
          emotion = Emotion.find_or_create_by(emotion_attribute)
          if !self.emotions.include?(emotion)
            self.memory_emotions.build(:emotion => emotion)
          end
        end
      end
    end

    def players_attributes=(player_attributes)
      player_attributes.values.each do |player_attribute|
        if player_attribute[:name].present?
          player = Player.find_or_create_by(player_attribute)
          if !self.players.include?(player)
            self.memory_players.build(:player => player)
          end
        end
      end
    end
end
