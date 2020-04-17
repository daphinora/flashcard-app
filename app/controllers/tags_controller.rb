class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.new(tag_params)
        @tag.save
        redirect_to tag_path(@tag)
    end

    private

    def tag_params
        params.require(:tag).permit(:category)
    end
end
