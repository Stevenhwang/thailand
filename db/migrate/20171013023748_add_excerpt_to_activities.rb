class AddExcerptToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :excerpt, :text
  end
end
