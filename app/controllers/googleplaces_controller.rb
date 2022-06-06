class GoogleplacesController < ApplicationController

    def searchPlace
        if params[:query] && params[:key]
            @client = GooglePlaces::Client.new(params[:key])
            puts @client
            if @client
                if params[:query].include?(' in ')
                    render json: @client.spots_by_query(params[:query])
                else
                    render json: @client.spots_by_query(params[:query]+' in '+params[:spot])
                end
            else 
                render json: { 'error': 'Invalid Key'}
            end
        elsif 
            render json: { 'error': 'Invalid Params. Please use -> query and key'}
        end
    end

    def randomPlaces
        @client = GooglePlaces::Client.new(params[:key])
        render json:@client.spots(params[:spot]) 
    end
end