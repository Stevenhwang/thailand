class AddExcerptToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :excerpt, :text
  end
end
