class QuoteController < ApplicationController
    def index
        random = Random.rand(Quote.all.length-1)
        render json: Quote.all[random]
    end
end