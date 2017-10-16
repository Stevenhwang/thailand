class AddImagesToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :images, :string
  end
end
