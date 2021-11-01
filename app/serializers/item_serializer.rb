class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :category_id
  # belongs_to :category
  def category_id
    self.object.category_id   
  end
  
end
