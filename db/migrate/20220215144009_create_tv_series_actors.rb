class CreateTvSeriesActors < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_actors do |t|
    	t.integer :tv_id
    	t.integer :user_id
    end
  end
end
