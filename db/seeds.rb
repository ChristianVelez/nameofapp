# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:name => "Public", :description => "Custom made for city riding in style!", :colour => "Black", :price => 299, :image_url => "bikes6.jpg")

Product.create(:name => "Schramm", :description => "Custom made to impress all the girls!", :colour => "Black", :price => 279, :image_url => "bikes2.jpg")

Product.create(:name => "Diesel", :description => "Custom made for stealth riding!", :colour => "Black", :price => 279, :image_url => "bikes3.jpg" )

Product.create(:name => "Astor", :description => "Custom made for parks and picnics!", :colour => "Orange", :price => 299, :image_url => "bikes4.jpg" )

Product.create(:name => "Abici", :description => "Custom made with love!", :colour => "Baby Blue", :price => 299, :image_url => "bikes.jpg" )

Product.create(:name => "Mayfair", :description => "Custom made for country riding!", :colour => "Red", :price => 299, :image_url => "bikes5.jpg" )

