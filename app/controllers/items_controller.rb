class ItemsController < ApplicationController

    def getSingleItem
        if params[:barcode]
            render json: Items.find_by(barcode: params[:barcode])
        else
            render json: {error: 'No Barcode'}
        end
    end

    def saveNewItem
        if params[:barcode] && params[:barcode].length > 0 && params[:price] && params[:price].length > 0 && params[:tax] && params[:tax].length > 0
            itemExists = Items.find_by(barcode: params[:barcode])
            if itemExists
                render json: { message: 'Item Already Exists!' }
            else
                newItem = Items.new({
                    barcode: params[:barcode],
                    name: params[:name] ? params[:name] : '',
                    size: params[:size] ? params[:size] : '',
                    pack: params[:pack] ? params[:pack] : '',
                    inStock: params[:inStock] ? params[:inStock] : 0,
                    price: params[:price],
                    cost: params[:cost] ? params[:cost] : '',
                    tax: params[:tax] === 'true',
                    type: params[:type] ? params[:type] : '',
                    deals: params[:deals] ? params[:deals] : '',
                    description: params[:description] ? params[:description] : ''
                })
                if newItem.save
                    render json: { message: 'Success' }
                else
                    render json: { message: 'Failed' }
                end
            end
        else
            render json: { message: 'Barcode, Price and Tax is required'}
        end
    end

end