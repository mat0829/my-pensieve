class User < ApplicationRecord
    has_secure_password
    has_many :memories, :dependent => :destroy
    has_many :emotions, through: :memories
    has_many :players, through: :memories
    validates :username, :email, :password, presence: true
    validates :email, :username, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    def username=(s)
      write_attribute(:username, s.to_s.titleize)
    end

    def memories_count
      memories.count
    end

    def emotions_count
      emotions.count
    end

    def players_count
      players.count
    end
end
