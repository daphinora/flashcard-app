class CardCollection < ApplicationRecord
    belongs_to :collection
    belongs_to :flashcard
end
