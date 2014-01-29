require 'watir'
require 'watir-webdriver'
require 'faker'

100.times do

	browser = Watir::Browser.new
	browser.goto 'http://rapplicizzle.herokuapp.com/artists/new'
	browser.text_field(:id => 'artist_name').set Faker::Name.name
	browser.text_field(:id => 'artist_pimptosity').set (1..10).to_a.sample
	browser.button(:name => 'commit').click
	browser.close

	browser = Watir::Browser.new
	browser.goto 'http://groupscar.herokuapp.com/cars/new'
	browser.text_field(:id => 'year').set (1900..2014).to_a.sample
	browser.text_field(:id => 'make').set Faker::Name.first_name
	browser.text_field(:id => 'model').set Faker::Name.first_name
	browser.text_field(:id => 'color').set ['blue', 'black', 'red', 'purple', 'yellow'].sample
	browser.button(:type => 'submit').click
	browser.close
	

	browser = Watir::Browser.new
	browser.goto 'http://g-a-lunches.herokuapp.com/lunches/new'
	browser.text_field(:name => 'meal_name').set ['pasta', 'beans', 'rice', 'cheese', 'skittles'].sample
	browser.text_field(:name => 'owner').set Faker::Name.name
	browser.text_field(:name => 'calories').set (100..2000).to_a.sample
	browser.text_field(:name => 'photo_url').set 'http://placekitten.com/'+ (100..200).to_a.sample.to_s + '/' + (100..200).to_a.sample.to_s
	browser.button(:type => 'submit').click
	browser.close
	
	browser = Watir::Browser.new
	browser.goto 'http://fantasticairplanes.herokuapp.com/airplanes/new'
	browser.text_field(:name => 'name').set Faker::Name.last_name
	browser.text_field(:name => 'manufacturer').set Faker::Company.name
	browser.text_field(:name => 'passenger_capacity').set (100..2000).to_a.sample
	browser.text_field(:name => 'year_made').set (1900..2014).to_a.sample
	browser.button(:id => 'submit').click
	browser.close

	browser = Watir::Browser.new
	browser.goto 'http://nameless-tundra-5619.herokuapp.com/cars/new'
	browser.text_field(:id => 'year').set (1900..2014).to_a.sample
	browser.text_field(:id => 'make').set Faker::Name.first_name
	browser.text_field(:id => 'model').set Faker::Name.first_name
	browser.text_field(:id => 'color').set ['blue', 'black', 'red', 'purple', 'yellow'].sample
	browser.button(:type => 'submit').click
	browser.close
	
end