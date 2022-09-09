class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.bigint :show_id
      t.text :show_type
      t.text :title
      t.text :director
      t.text :country
      t.date :date_added
      t.text :release_year
      t.text :rating
      t.text :duration
      t.text :listed_in

      t.timestamps
    end
  end
end
