class Player < ApplicationRecord
    has_many :memory_players
    has_many :memories, through: memory_players
    has_many :users, through: :memories
end
