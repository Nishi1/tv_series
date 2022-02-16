# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

#Upload tv series CSV
csv_text = File.read(Rails.root.join('lib', 'seeds', 'tv_series.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	director = Director.find_or_create_by(name: row['Director'])
	actor = Actor.find_or_create_by(name: row['Actor'])
	tv = Tv.find_by(serial: row['TV Series'], genre: row['Genre'], director_id: director.id)
	if tv.present?
		tv.tv_actors.build(:user_id => actor.id)
		tv.shoot_locations.build(:location => row['Shoot location'], :country => row['Country'])
	else
		tv = Tv.new
		tv.serial = row['TV Series']
		tv.genre = row['Genre']
		tv.no_of_seasons = row['No of seasons']
		tv.first_release_date = Date.parse(row['Date of First Release']).strftime("%m-%d-%Y")
		tv.director_id = director.id
		tv.shoot_locations.build(:location => row['Shoot location'], :country => row['Country'])
		tv.tv_actors.build(:user_id => actor.id)	  
	end
	tv.save
end

#Upload user review CSV
csv_text = File.read(Rails.root.join('lib', 'seeds', 'reviews.csv'))
csv_reviews = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv_reviews.each do |row|
	user = Viewer.find_or_create_by(name: row['User'])
	tv = Tv.find_by_serial(row['TV Series'])
	ur = UserReview.new
	ur.tv_id = tv.id
	ur.user_id = user.id
	ur.rating = row['Stars']
	ur.reviews = row['Review']
	ur.save  
end 
