class AddImagesToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :images, :string
  end
end
