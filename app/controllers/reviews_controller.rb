class ReviewsController < ApplicationController

    def index
        render json: Reviews.all
    end

    def create
        if(!Reviews.find_by(review: params[:review]))
            Reviews.new(review: params[:review]).save
        end
        render json: true
    end
end