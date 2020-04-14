class TaggedCardsController < ApplicationController
    def index
        @tagged_cards = TaggedCard.all
    end

    def show
        @tagged_card = TaggedCard.find(params[:id])
    end
end
