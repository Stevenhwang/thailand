class AddImagesToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :images, :string
  end
end
