class AddImagesToTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :images, :string
  end
end
