class User < ApplicationRecord
    has_many :collections
    has_many :user_cards
    has_many :flashcards, through: :user_cards

    validates :username, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false }

    validates :password, length: { in: 6..20 }
    
    has_secure_password   


    def self.user_collections(user_id)
        binding.pry
    end
end
