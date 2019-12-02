class Memory < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :memory_emotions
  has_many :emotions, through: :memory_emotions, dependent: :destroy
  has_many :memory_players
  has_many :players, through: :memory_players, dependent: :destroy

  scope :alphabetized, -> { order(:title)}
  #scope :newest, -> { order(created_at: :desc) }

  def title_capitalized_and_split
    title.split.map(&:capitalize).join(' ')
  end

  def content_capitalized
    content.capitalize
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
