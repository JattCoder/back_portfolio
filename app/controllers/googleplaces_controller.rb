class GoogleplacesController < ApplicationController
    def searchPlace
        if params[:query] && params[:key]
            @client = GooglePlaces::Client.new(params[:key])
            puts @client
            if @client 
                render json: @client.spots_by_query(params[:query])
            else 
                render json: { 'error': 'Invalid Key'}
            end
        elsif 
            render json: { 'error': 'Invalid Params. Please use -> query and key'}
        end
    end
end