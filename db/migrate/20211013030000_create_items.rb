class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
