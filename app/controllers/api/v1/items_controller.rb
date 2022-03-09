class Api::V1::ItemsController < ApplicationController
    
    def index  
        items = Item.all 
        render json: items 
    end

    def show 
        item = Item.find(params[:id])
        render json: item 
    end

    def create
        item = Item.create(name: item_params[:name], description: item_params[:description], price: item_params[:price], category_id: item_params[:category_id]) 
        render json: item 
    end

    def destroy
        binding.pry
        item = Item.find(params["id"])
        # or[:id]? 
        # category = Category.find(item.category_id)
        item.destroy
        render json: item 
    end

    private

    def item_params
        params.require(:item).permit(:category_id, :name, :description, :price, :item)
    end 
    

end
