class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.string :title
      t.integer :price
      t.string :departure
      t.text :introduction
      t.text :notice
      t.text :instruction

      t.timestamps
    end
  end
end
