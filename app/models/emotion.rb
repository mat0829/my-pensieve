class Emotion < ApplicationRecord
  has_many :memory_emotions
  has_many :memories, through: :memory_emotions
  has_many :users, through: :memories

  scope :alphabetized, -> { order(:name)}

  def name_capitalized
    name.capitalize
  end
end
