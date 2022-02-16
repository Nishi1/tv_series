class CreateTvSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :tvs do |t|
    	t.string :serial
    	t.string :genre
    	t.integer :no_of_seasons
    	t.string :first_release_date
    	t.integer :director_id

      t.timestamps null: false
    end
  end
end
