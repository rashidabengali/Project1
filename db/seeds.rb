# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# user.create :email => 'crazy@ga.co'
u1 = User.create :email => 'bengali.rashida@gmail.com', :password => 'rash'
u2 = User.create :email => 'huzaifa.ms@gmail.com', :password => 'chicken'
u3 = User.create :email => 'joel@ga.co', :password => 'chicken'
u4 = User.create :email => 'yianni@ga.co', :password => 'chicken'
u5 = User.create :email => 'purvi@ga.co', :password => 'chicken'
u6 = User.create :email => 'ritika.@ga.co', :password => 'chicken'

Cuisine.destroy_all
c1 = Cuisine.create :name => 'Modern Australian'
c2 = Cuisine.create :name => 'Malaysian'
c3 = Cuisine.create :name => 'French'
c4 = Cuisine.create :name => 'Italian'
c5 = Cuisine.create :name => 'Dessert'
c6 = Cuisine.create :name => 'Mexican'

Restaurant.destroy_all
r1 = Restaurant.create(:name => '12-Micron', :location => 'Wynyard')
r2 = Restaurant.create(:name => 'Pappa Rich', :location => 'Bankstown')
r3 = Restaurant.create(:name => 'Glacage', :location => 'Bankstown')
r4 = Restaurant.create(:name => 'CASA', :location => 'Barangaroo')
r5 = Restaurant.create(:name => 'Koi Dessert Bar', :location => 'Surry Hills')
r6 = Restaurant.create(:name => 'El Loco', :location => 'Townhall')
r7 = Restaurant.create(:name => 'San Churros', :location => 'Penrith')
r8 = Restaurant.create(:name => 'Volcano Steak House', :location => 'Parramatta')

Review.destroy_all
a1 = Review.create(:rating => 5, :comment => 'Awesome Experience!')
a2 = Review.create(:rating => 4, :comment => 'Loved the food and the service.')

# Association ------------

#cuisines and restaurants
c1.restaurants << r1 << r8
c2.restaurants << r2
c3.restaurants << r3
c4.restaurants << r4
c5.restaurants << r5 << r7
c6.restaurants << r6

#restaurants and reviews
r1.reviews << a1
r2.reviews << a2
