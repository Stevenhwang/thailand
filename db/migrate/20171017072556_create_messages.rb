class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :email
      t.text :text

      t.timestamps
    end
  end
end
