class AddExcerptToFoods < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :excerpt, :text
  end
end
