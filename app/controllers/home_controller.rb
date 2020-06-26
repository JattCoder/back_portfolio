class HomeController < ApplicationController
    def index
        render json: Home.all[0]
    end

    def create
        addone = Home.all[0]
        addone.likes = (addone.likes + params[:likes])
        addone.save
        render json: Home.all[0]
    end
end