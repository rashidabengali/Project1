# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# user.create :email => 'crazy@ga.co'
u1 = User.create(:name => 'Rashida Bengali', :email => 'bengali.rashida@gmail.com', :password => 'rash', :admin => true)
u2 = User.create(:name => 'Huzaifa Shakir', :email => 'huzaifa.ms@gmail.com', :password => 'chicken')
u3 = User.create(:name => 'Joel Turnbull', :email => 'joel@ga.co', :password => 'chicken')
u4 = User.create(:name => 'Yianni Moustakas', :email => 'yianni@ga.co', :password => 'chicken')
u5 = User.create(:name => 'Purvi Pandya', :email => 'purvi@ga.co', :password => 'chicken')
u6 = User.create(:name => 'Ritika Goel', :email => 'ritika@ga.co', :password => 'chicken')
u7 = User.create(:name => 'Luke Anthony', :email => 'luke@ga.co', :password => 'chicken')
u8 = User.create(:name => 'Mabeth Morris', :email => 'mabeth@ga.co', :password => 'chicken')
u9 = User.create(:name => 'Patricia Nunes', :email => 'patricia@ga.co', :password => 'chicken')
u10 = User.create(:name => 'Nazhad Bari', :email => 'nazhad@ga.co', :password => 'chicken')


Cuisine.destroy_all
c1 = Cuisine.create :name => 'Modern Australian'
c2 = Cuisine.create :name => 'Malaysian'
c3 = Cuisine.create :name => 'Italian'
c4 = Cuisine.create :name => 'Dessert'
c5 = Cuisine.create :name => 'Mexican'
c6 = Cuisine.create :name => 'Lebanese'
c7 = Cuisine.create :name => 'Chinese'

Restaurant.destroy_all
r1 = Restaurant.create(:name => '12-Micron', :location => 'Wynyard', :specialities => 'Steaks')
r2 = Restaurant.create(:name => '@iconic', :location => 'Wynyard', :specialities => 'Chicken Funghi')
r3 = Restaurant.create(:name => 'Volcano Steak House', :location => 'Parramatta', :specialities => 'Ribs and Steaks')

r4 = Restaurant.create(:name => 'Pappa Rich', :location => 'Bankstown', :specialities => 'Beef curry')
r5 = Restaurant.create(:name => 'Ipoh Town', :location => 'Bankstown', :specialities => 'Laksa noodles')
r6 = Restaurant.create(:name => 'Albee''s Kitchen', :location => 'Campsie', :specialities => 'Poached chicken rice')

r7 = Restaurant.create(:name => 'Glacage', :location => 'Bankstown', :specialities => 'Pizza')
r8 = Restaurant.create(:name => 'CASA', :location => 'Barangaroo', :specialities => 'Pastas')
r9 = Restaurant.create(:name => 'Pizzeria Belluci', :location => 'Barangaroo', :specialities => 'Shakshouka')

r10 = Restaurant.create(:name => 'Koi Dessert Bar', :location => 'Surry Hills', :specialities => 'Strawberry pillow')
r11 = Restaurant.create(:name => 'Black Star Pastry', :location => 'Newtown', :specialities => 'Watermelon pastry')
r12 = Restaurant.create(:name => 'Bay Vista', :location => 'Parramatta', :specialities => 'Ice cream buckets')
r13 = Restaurant.create(:name => 'San Churros', :location => 'Penrith', :specialities => 'Churros')

r14 = Restaurant.create(:name => 'El Loco', :location => 'Townhall', :specialities => 'Tacos')
r15 = Restaurant.create(:name => 'Mejico', :location => 'Surry Hills', :specialities => 'Quesadillas')
r16 = Restaurant.create(:name => 'Chica Bonita', :location => 'Manly', :specialities => 'Burritos')

r17 = Restaurant.create(:name => 'Jasmin 1', :location => 'Bankstown', :specialities => 'Mixed grill platter')
r18 = Restaurant.create(:name => 'Anason', :location => 'Barangaroo', :specialities => 'Hummus, Pita')

r19 = Restaurant.create(:name => 'Chef''s Dynasty', :location => 'Bankstown', :specialities => 'Yum Cha Buffet')
r20 = Restaurant.create(:name => 'Twisted Noodles', :location => 'Punchbowl', :specialities => 'Noodles')


Review.destroy_all
a1 = Review.create(:rating => 5, :comment => 'Awesome Experience!')
a2 = Review.create(:rating => 4, :comment => 'Loved the food and the service.')
a3 = Review.create(:rating => 3, :comment => 'Expectations were high.')
a4 = Review.create(:rating => 5, :comment => 'Must visit!')
a5 = Review.create(:rating => 4, :comment => 'Good Experience!')
a6 = Review.create(:rating => 3, :comment => 'Average Experience!')
a7 = Review.create(:rating => 5, :comment => 'Amazing food')
a8 = Review.create(:rating => 4, :comment => 'Good food')
a9 = Review.create(:rating => 3, :comment => 'Awesome food but slow service')
a10 = Review.create(:rating => 5, :comment => 'Tastiest food I ever had')
a11 = Review.create(:rating => 5, :comment => 'Wow! Huge buckets of ice cream.')
a12 = Review.create(:rating => 5, :comment => 'Fancy desserts place')
a13 = Review.create(:rating => 5, :comment => 'Awesome Experience!')
a14 = Review.create(:rating => 4, :comment => 'Pancakes were amazing')
a15 = Review.create(:rating => 4, :comment => 'Amazing pastries')
a16 = Review.create(:rating => 5, :comment => 'Fancy ambience')
a17 = Review.create(:rating => 4, :comment => 'Awesome Experience!')
a18 = Review.create(:rating => 3, :comment => 'Awesome Experience!')
a19 = Review.create(:rating => 5, :comment => 'Love the ambience and food')
a20 = Review.create(:rating => 4, :comment => 'Everything to our liking')
a21 = Review.create(:rating => 3, :comment => 'Average food. Took a lot of time to be served.')
a22 = Review.create(:rating => 5, :comment => 'Awesome Experience!')
a23 = Review.create(:rating => 4, :comment => 'Good experience and food')
a24 = Review.create(:rating => 3, :comment => 'Awesome Experience!')
a25 = Review.create(:rating => 2, :comment => 'Bad Experience!')
a26 = Review.create(:rating => 1, :comment => 'I can cook better!')
a27 = Review.create(:rating => 3, :comment => 'Slow service but good food.')

# Association ------------

#cuisines and restaurants
c1.restaurants << r1 << r2 << r3
c2.restaurants << r4 << r5 << r6
c3.restaurants << r7 << r8 << r9
c4.restaurants << r10 << r11 << r12 << r13
c5.restaurants << r14 << r15 << r16
c6.restaurants << r17 << r18
c7.restaurants << r19 << r20

#restaurants and reviews
r1.reviews << a1 << a2
r2.reviews << a3
r3.reviews << a4
r4.reviews << a5
r5.reviews << a6
r6.reviews << a7
r7.reviews << a8
r8.reviews << a9
r9.reviews << a10
r10.reviews << a11 << a12
r11.reviews << a13 << a14
r12.reviews << a15 << a16
r13.reviews << a17
r14.reviews << a18 << a19 << a20
r15.reviews << a21 << a22 << a23
r16.reviews << a24
r17.reviews << a25
r18.reviews << a26
r19.reviews << a27

#users and Reviews
u1.reviews << a1 << a2 << a3
u2.reviews << a4 << a5 << a6
u3.reviews << a7 << a8 << a9
u4.reviews << a10 << a11 << a12
u5.reviews << a13 << a14
u6.reviews << a15 << a16
u7.reviews << a17 << a18 << a19 << a20
u8.reviews << a21 << a22 << a23
u9.reviews << a24 << a25
u10.reviews << a26 << a27
