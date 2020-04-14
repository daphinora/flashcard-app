class Tag < ApplicationRecord
    has_many :tagged_cards
    has_many :flashcards, through: :tagged_cards
end
