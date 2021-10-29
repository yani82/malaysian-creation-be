class Api::V1::ItemsController < ApplicationController
  
    # before_action :set_category

    # /api/v1/categories/1/items 
    
    def index  
        items = Item.all 
        render json: items 
    end

    def show 
        item = Item.find(params[:id])
        render json: item 
    end

    def create
        item = category.items.new(item_params)
        if category.name(item) != 'Item does not exist' 
            item.save
            render json: category 
        else 
            render json: {error: 'Item does not exist'}
        end 
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private

    # def set_category
    #     category = Category.find(params[:category_id])
    # end 

    def item_params
        params.require(:item).permit(:category_id, :name, :description, :price)
    end 
    

end
