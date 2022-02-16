class CreateUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reviews do |t|
    	t.integer :tv_id
    	t.integer :user_id
    	t.integer :rating
    	t.text :reviews

      	t.timestamps null: false
    end
  end
end
