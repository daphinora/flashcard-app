class UserCard < ApplicationRecord
    belongs_to :flashcard
    belongs_to :user
end
