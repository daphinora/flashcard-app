class CollectionsController < ApplicationController
    def index
        @collections = Collection.all
    end

    def show
        @collection = Collection.find(params[:id])
    end

    def new
        @collection = Collection.new
    end

    def create
        @collection = Collection.new(collection_params)
        @collection.user = current_user
        @collection.save
        redirect_to @collection
    end

    def edit
        
    end

    def update
        @collection = Collection.find(collection_params[:collection_id])
        @collection.update(flashcard_ids: collection_params[:flashcard_ids])
        redirect_to @collection
    end

    private

    def collection_params
        params.require(:collection).permit(:user_id, :name, :collection_id, flashcard_ids:[])
    end
end
