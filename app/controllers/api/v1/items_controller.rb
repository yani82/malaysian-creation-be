class Api::V1::ItemsController < ApplicationController
  
    # before_action :set_category

    # /api/v1/categories/1/items 
    
    def index 
        items = categories.items
        render json: items
    end

    def show 
        item = Item.find(params[:id])
        render json: item 
    end

    def create
        item = category.item.build(item_params)
        if item.save 
            render json: item 
        else 
            render json: {error: 'Error creating item'}
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
