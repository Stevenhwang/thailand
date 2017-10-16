class AddRecommendToTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :recommend, :boolean
  end
end
