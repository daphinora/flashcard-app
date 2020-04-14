class TaggedCard < ApplicationRecord
    belongs_to :tag
    belongs_to :flashcard
end
