class AddDateToTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :date, :string
  end
end
