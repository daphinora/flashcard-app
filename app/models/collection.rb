class Collection < ApplicationRecord
    belongs_to :user
    has_many :card_collections
    has_many :flashcards, through: :card_collections
end
