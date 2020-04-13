class Flashcard < ApplicationRecord
    has_many :user_cards
    has_many :users, through: :user_cards
end
