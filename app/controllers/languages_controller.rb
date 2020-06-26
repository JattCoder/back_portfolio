class LanguagesController < ApplicationRecord

    def index
        render json: Languages.all
    end

end