class QuoteController < ApplicationController
    def index
        render json: Quote.all[rand(Quote.all.length)]
    end
end