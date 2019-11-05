class User < ApplicationRecord
    has_secure_password
    validates :username, :email, :password, presence: true
    validates :email, :username, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    has_many :memories
    has_many :emotions, through: :memories
    has_many :players, through: :memories
end
