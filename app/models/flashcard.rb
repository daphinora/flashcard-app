class Flashcard < ApplicationRecord
    has_many :user_cards
    has_many :users, through: :user_cards
    has_many :tagged_cards
    has_many :tags, through: :tagged_cards
    has_many :card_collections
    has_many :collections, through: :card_collections
end
