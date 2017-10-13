class AddExcerptToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :excerpt, :text
  end
end
