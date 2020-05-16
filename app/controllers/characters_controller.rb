class CharactersController < ApplicationController
    def index
        @characters = Character.all
        render json: @characters, include: [:novel]
    end

    def show
        @character = Character.find(params[:id])
        render json: @character, include: [:novel]
    end

    def create
        @character = Character.create(
            name: params[:name],
            loves: params[:loves],
            novel_id: params[:novel_id]
        )
        id = @character.id
            redirect_to 'http://localhost:3001/novels/${id}'
    end
end
