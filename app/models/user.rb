class User < ApplicationRecord
    has_many :collections
    has_many :user_cards
    has_many :flashcards, through: :user_cards
end
