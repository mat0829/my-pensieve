class Player < ApplicationRecord
    has_many :memory_players
    has_many :memories, through: :memory_players
    has_many :users, through: :memories

    def player_name_capitalized_and_split
      name.split.map(&:capitalize).join(' ')
    end
end
