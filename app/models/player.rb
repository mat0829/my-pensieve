class Player < ApplicationRecord
  has_many :memory_players
  has_many :memories, through: :memory_players
  has_many :users, through: :memories
  validates :name, uniqueness: true

  scope :alphabetized, -> { order(:name)}

  def name=(s)
    write_attribute(:name, s.to_s.titleize)
  end
end
