class FlashcardsController < ApplicationController
    def index
        @flashcards = Flashcard.all
    end

    def show
        @flashcard = Flashcard.find(params[:id])
    end

    def new
        @flashcard = Flashcard.new
    end

    def create
        @flashcard = Flashcard.new(flashcard_params)
        @flashcard.save
        redirect_to flashcard_path(@flashcard)
    end

    private

    def flashcard_params
        params.require(:flashcard).permit(:question, :answer)
    end
end
