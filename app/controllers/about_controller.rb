class AboutController < ApplicationController
    def index
        render json: About.all[0]
    end
end