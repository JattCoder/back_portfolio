class ImagesController < ApplicationController

    def index
        render json: Images.all
    end

end