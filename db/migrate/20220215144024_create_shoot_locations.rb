class CreateShootLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :shoot_locations do |t|
    	t.integer :tv_id
    	t.string :location
    	t.string :country
    end
  end
end
