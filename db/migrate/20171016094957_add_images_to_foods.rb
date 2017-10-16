class AddImagesToFoods < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :images, :string
  end
end
