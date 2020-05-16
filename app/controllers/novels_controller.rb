class NovelsController < ApplicationController
    def index
        @novels = Novel.all
        render json: @novels, include: [:characters]
    end

    def show
        @novel = Novel.find(params[:id])
        render json: @novel, include: [:characters]
    end
end
