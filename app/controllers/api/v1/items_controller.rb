class Api::V1::ItemsController < ApplicationController
    
    def index 
        items = item.all
        render json: items
    end

    def create
        item = Item.new(item_params)
        if item.save 
            render json: item 
        else 
            render json: {error: 'Error creating item'}
        end 
    end

    def show 
        item = Item.find(params[:id])
        render json: item 
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:category_id, :name, :description, :price)
    end 
    

end
