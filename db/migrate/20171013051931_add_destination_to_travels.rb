class AddDestinationToTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :destination, :string
  end
end
