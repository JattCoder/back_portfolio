class GoogleplacesController < ApplicationController

    def getApi
        'AIzaSyAR8TWRVg_themcDKGwjJ3w696oLs3epz4'
    end

    def getLatsAndLongs(locations)
        latLng = []
        locations.length.times do |locationIndex|
            latLng.push({lat: locations[locationIndex][:lat], lng: locations[locationIndex][:lng]})
        end
        latLng
    end

    def convertArraytoStringDestinations(destinations)
        str = ''
        destinations.length.times do |index|
            str = "#{str}#{destinations[index][:lat]}%2C#{destinations[index][:lng]}%7C"
        end
        str
    end

    def getDistance(mySpot, locations)
        destinationSpots = convertArraytoStringDestinations(getLatsAndLongs(locations))
        response = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?destinations=#{destinationSpots}&origins=#{mySpot}&key=#{getApi}")
        response.body
    end

    def assignDistanceToSpicificPlace(places, distances)
        placesList = []
        distances["destination_addresses"].length.times do |destinationIndex|
            placesList.push({
                "placeInfo": places[destinationIndex][:json_result_object],
                "distance": distances["rows"][0]["elements"][destinationIndex]
            })
        end
        placesList
    end

    def searchPlace
        if params[:query]
            @client = GooglePlaces::Client.new(getApi)
            if @client
                if params[:query].include?(' in ')
                    places = @client.spots_by_query(params[:query])
                    distances = getDistance(params[:spot], places)
                    render json: assignDistanceToSpicificPlace(places, JSON.parse(distances))
                else
                    places = @client.spots_by_query(params[:query]+' in '+params[:spot])
                    distances = getDistance(params[:spot], places)
                    render json: assignDistanceToSpicificPlace(places, JSON.parse(distances))
                end
            else
                render json: { 'error': 'Invalid Key'}
            end
        elsif 
            render json: { 'error': 'Invalid Params. Please use -> query and key' }
        end
    end

    def randomPlaces
        if params[:lat] && params[:lng]
            @client = GooglePlaces::Client.new(getApi)
            places = @client.spots(params[:lat], params[:lng])
            distances = getDistance("#{params[:lat]}, #{params[:lng]}", places)
            render json: assignDistanceToSpicificPlace(places, JSON.parse(distances))
        else 
            render json: { 'error': 'Invalid Params. Please use -> key, lat and lng'}
        end
    end

    def autoComplete
        if params[:query] && params[:lat] && params[:lng]
            @client = GooglePlaces::Client.new(getApi)
            render json: @client.predictions_by_input(
                params[:query],
                lat: params[:lat],
                lng: params[:lng],
                radius: 20000000,
                types: 'geocode',
                language: I18n.locale,
            )
        else
            render json: {'error': 'query does not exists'}
        end
    end
end