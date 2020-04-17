# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## API CALLS ##
class Trivia
    require 'open-uri'
    require 'net/http'
    require 'json'

    URL = "https://opentdb.com/api.php?amount=10"
    URI = URI.parse(URL)
    TOKEN = "https://opentdb.com/api_token.php?command=request"

    def self.query(info_request)
        # binding.pry
        request = (URL + "&#{info_request}&type=multiple" + TOKEN).to_json
        @request_object = Net::HTTP.get_response(URI)
        @request_hash = JSON.parse(@request_object.body)
    end

    def self.category(request)
        query("category=#{request}")
        @request_hash.flatten[3][0]["category"]
    end
end
    ## ##

#USERS
8.times do
    User.create(username: Faker::Movies::HarryPotter.unique.character)  
end

#FLASHCARDS
# 5.times do
#     Flashcard.create(question: "How many countries are inside the United Kingdom?" , answer: "Four")
# end
Flashcard.create(question: "How many countries are inside the United Kingdom?" , answer: "Four")
Flashcard.create(question: "The land of Gotland is located in which European country?" , answer: "Sweden")
Flashcard.create(question: "The ancient Roman god of war was commonly known as which of the following?" , answer: "Mars")
Flashcard.create(question: "Who in Greek mythology, who led the Argonauts in search of the Golden Fleece?" , answer: "Jason")
Flashcard.create(question: "Which figure from Greek mythology traveled to the underworld to return his wife Eurydice to the land of the living?" , answer: "Four")
Flashcard.create(question: "Who is the Egyptian god of reproduction and lettuce?" , answer: "Min")
Flashcard.create(question: "A carnivorous animal eats flesh, what does a nucivorous animal eat?" , answer: "nuts")
Flashcard.create(question: "What type of animal is a natterjack?" , answer: "Toad")
Flashcard.create(question: "The Kākāpō is a large, flightless, nocturnal parrot native to which country?" , answer: "New Zealand")
Flashcard.create(question: "Hippocampus is the Latin name for which marine creature?" , answer: "Seahorse")

#CATEGORIES

Tag.create(category: Trivia.category(9))
Tag.create(category: Trivia.category(20))
Tag.create(category: Trivia.category(22))
Tag.create(category: Trivia.category(27))

# COLLECTIONS
Collection.create(user_id: User.first.id, name: "Greek Mythology")
Collection.create(user_id: User.first.id, name: "Animals")
Collection.create(user_id: User.first.id, name: "Geography")




# &category=19
# &difficulty=medium
# &type=multiple
# https://opentdb.com/api.php?amount=20
# https://opentdb.com/api.php?amount=10&category=9&type=multiple






