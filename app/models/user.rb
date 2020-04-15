class User < ApplicationRecord
    has_many :collections
    has_many :user_cards
    has_many :flashcards, through: :user_cards

    validates :username, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false }

    validates :password, length: { minimum: 10 }
    
    has_secure_password   
end
