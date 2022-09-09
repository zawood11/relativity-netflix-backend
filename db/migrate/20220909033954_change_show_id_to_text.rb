class ChangeShowIdToText < ActiveRecord::Migration[7.0]
  def change
    change_column :shows, :show_id, :text
  end
end
