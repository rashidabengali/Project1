# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# user.create :email => 'crazy@ga.co'
u1 = User.create(:name => 'Rashida Bengali', :image => '/assets/RashidaBengali_5bf9dbf4c7897.png', :email => 'bengali.rashida@gmail.com', :password => 'rash', :admin => true)
u2 = User.create(:name => 'Huzaifa Shakir', :image => '/assets/0.jpeg', :email => 'huzaifa.ms@gmail.com', :password => 'chicken')
u3 = User.create(:name => 'Joel Turnbull', :image => '/assets/thumb_joel.jpg', :email => 'joel@ga.co', :password => 'chicken')
u4 = User.create(:name => 'Yianni Moustakas', :image => '/assets/thumb_yiannimoustakas.jpeg', :email => 'yianni@ga.co', :password => 'chicken')
u5 = User.create(:name => 'Purvi Pandya', :image => '/assets/myavatar.png', :email => 'purvi@ga.co', :password => 'chicken')
u6 = User.create(:name => 'Ritika Goel', :image => '/assets/Female-Avatar-1.png', :email => 'ritika@ga.co', :password => 'chicken')
u7 = User.create(:name => 'Luke Anthony', :image => '/assets/202607.1.jpg', :email => 'luke@ga.co', :password => 'chicken')
u8 = User.create(:name => 'Mabeth Morris', :image => '/assets/myavatar.png', :email => 'mabeth@ga.co', :password => 'chicken')
u9 = User.create(:name => 'Patricia Nunes', :image => '/assets/Female-Avatar-1.png', :email => 'patricia@ga.co', :password => 'chicken')
u10 = User.create(:name => 'Nazhad Bari', :image => '/assets/naz.jpg', :email => 'nazhad@ga.co', :password => 'chicken')


Cuisine.destroy_all
c1 = Cuisine.create(:name => 'Modern Australian', :image => '/assets/Lamb.jpg')
c2 = Cuisine.create(:name => 'Malaysian', :image => '/assets/malaysian.jpg')
c3 = Cuisine.create(:name => 'Italian', :image => '/assets/italian.jpg')
c4 = Cuisine.create(:name => 'Dessert', :image => '/assets/dessert.jpg')
c5 = Cuisine.create(:name => 'Mexican', :image => '/assets/mexican.jpg')
c6 = Cuisine.create(:name => 'Lebanese', :image => '/assets/lebanese.jpg')
c7 = Cuisine.create(:name => 'Chinese', :image => '/assets/chinese.jpeg')

Restaurant.destroy_all
r1 = Restaurant.create(:name => '12-Micron', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Wynyard', :phone => 83222075, :specialities => 'Steaks', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r2 = Restaurant.create(:name => '@iconic', :images => ['/assets/iconic1.jpg', '/assets/iconic2.jpg', '/assets/iconic3.jpg'], :location => 'Wynyard', :phone => 97093499, :specialities => 'Chicken Funghi', :opening_hours => '9:00:00', :closing_hours => '22:00:00')
r3 = Restaurant.create(:name => 'Volcano Steak House', :images => ['/assets/volcano1.jpg', '/assets/volcano2.jpg', '/assets/volcano3.jpg'], :location => 'Parramatta', :phone => 87644966, :specialities => 'Ribs and Steaks', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r4 = Restaurant.create(:name => 'Pappa Rich', :images => ['/assets/papa1.jpg', '/assets/papa2.jpg', '/assets/papa3.jpg'], :location => 'Bankstown', :phone => 87644966, :specialities => 'Beef curry', :opening_hours => '9:00:00', :closing_hours => '22:00:00')
r5 = Restaurant.create(:name => 'Ipoh Town', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Bankstown', :phone => 87644966, :specialities => 'Laksa noodles', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r6 = Restaurant.create(:name => 'Albee''s Kitchen', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Campsie', :phone => 87644966, :specialities => 'Poached chicken rice', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r7 = Restaurant.create(:name => 'Glacage', :images => ['/assets/glacage1.jpg', '/assets/glacage2.jpg', '/assets/glacage3.jpg'], :location => 'Bankstown', :phone => 87644966, :specialities => 'Shakshouka', :opening_hours => '9:00:00', :closing_hours => '20:00:00')
r8 = Restaurant.create(:name => 'CASA', :images => ['/assets/casa1.jpg', '/assets/casa2.jpg', '/assets/casa3.jpg'], :location => 'Barangaroo', :phone => 87644966, :specialities => 'Wood Fire Pizzas', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r9 = Restaurant.create(:name => 'Pizzeria Belluci', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Barangaroo', :phone => 87644966, :specialities => 'Thin Crust Pizzas', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r10 = Restaurant.create(:name => 'Koi Dessert Bar', :images => ['https://cdn.concreteplayground.com/content/uploads/2018/01/KOIXMC3_Credit_Tery_Gunata.jpg', '/assets/koi2.jpg', '/assets/koi3.jpg'], :location => 'Surry Hills', :phone => 87644966, :specialities => 'Strawberry pillow', :opening_hours => '9:00:00', :closing_hours => '20:00:00')
r11 = Restaurant.create(:name => 'Black Star Pastry', :phone => 87644966, :images => ['/assets/black1.jpg', '/assets/black2.jpg', 'https://static1.squarespace.com/static/528357bae4b04e03f11d4913/t/55d2b19be4b0ac7807b89870/1439871389718/Black+Star+Pasty+Orange+Cake+w.+Persian+Fig+and+Cream+Cheese+Icing+x+Tippity+Tea'], :location => 'Newtown', :specialities => 'Watermelon pastry', :opening_hours => '9:00:00', :closing_hours => '20:00:00')
r12 = Restaurant.create(:name => 'Bay Vista', :images => ['/assets/bay1.jpg', '/assets/bay2.jpg', '/assets/bay3.jpg'], :location => 'Parramatta', :phone => 87644966, :specialities => 'Ice cream buckets', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r13 = Restaurant.create(:name => 'San Churros', :images => ['/assets/san1.jpg', '/assets/san2.jpeg', '/assets/san3.jpg'], :location => 'Penrith', :phone => 87644966, :specialities => 'Churros', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r14 = Restaurant.create(:name => 'El Loco', :images => ['/assets/loco1.jpeg', '/assets/loco2.jpg', '/assets/loco3.jpg'], :location => 'Townhall', :phone => 87644966, :specialities => 'Tacos', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r15 = Restaurant.create(:name => 'Mejico', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Surry Hills', :phone => 87644966, :specialities => 'Quesadillas', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r16 = Restaurant.create(:name => 'Chica Bonita', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Manly', :phone => 87644966, :specialities => 'Burritos', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r17 = Restaurant.create(:name => 'Jasmin 1', :images => ['/assets/jasmin1.jpg', '/assets/jasmin2.jpg', '/assets/jasmin3.jpg'], :location => 'Bankstown', :phone => 87644966, :specialities => 'Mixed grill platter', :opening_hours => '9:00:00', :closing_hours => '22:00:00')
r18 = Restaurant.create(:name => 'Anason', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Barangaroo', :phone => 87644966, :specialities => 'Hummus, Pita', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r19 = Restaurant.create(:name => 'Chef''s Dynasty', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Bankstown', :phone => 87644966, :specialities => 'Yum Cha Buffet', :opening_hours => '9:00:00', :closing_hours => '21:00:00')
r20 = Restaurant.create(:name => 'Twisted Noodles', :images => ['/assets/micron1.jpeg', '/assets/micron2.jpg', '/assets/micron3.jpeg'], :location => 'Punchbowl', :phone => 87644966, :specialities => 'Noodles', :opening_hours => '9:00:00', :closing_hours => '21:00:00')

r21 = Restaurant.create(:name => 'Rashays', :images => ['/assets/rashay1.jpg', 'https://res.cloudinary.com/scentre-group-au/image/fetch/c_fill,q_auto,g_faces:auto,w_2500,h_1071,f_auto/https://cam.scentregroup.io/m/3e9560583e139b26', '/assets/rashay3.jpg'], :location => 'Punchbowl', :phone => 87644966, :specialities => 'Beef Wagyu', :opening_hours => '9:00:00', :closing_hours => '21:00:00')


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
a28 = Review.create(:rating => 4, :comment => 'Had a fabulous feast with family.')
a29 = Review.create(:rating => 4, :comment => 'Once is not enough.')

Like.destroy_all
l1 = Like.create
l2 = Like.create
l3 = Like.create
l4 = Like.create
l5 = Like.create
l6 = Like.create
l7 = Like.create
l8 = Like.create
l9 = Like.create
l10 = Like.create
l11 = Like.create
l12 = Like.create
l13 = Like.create
l14 = Like.create
l15 = Like.create
l16 = Like.create
l17 = Like.create
l18 = Like.create
l19 = Like.create
l20 = Like.create
l21 = Like.create
l22 = Like.create
l23 = Like.create
l24 = Like.create

# Association ------------

#cuisines and restaurants
c1.restaurants << r1 << r2 << r3 << r21
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
r20.reviews << a28
r21.reviews << a29


#users and Reviews
u1.reviews << a1 << a2 << a3
u2.reviews << a4 << a5 << a6
u3.reviews << a7 << a8 << a9
u4.reviews << a10 << a11 << a12
u5.reviews << a13 << a14
u6.reviews << a15 << a16
u7.reviews << a17 << a18 << a19 << a20
u8.reviews << a21 << a22 << a23
u9.reviews << a24 << a25 << a29
u10.reviews << a26 << a27 << a28

# restaurants and likes
r1.likes << l1 << l2 << l3
r2.likes << l4 << l5
r3.likes << l6
r4.likes << l7
r5.likes << l8
r6.likes << l9
r7.likes << l10
r8.likes << l11
r9.likes << l12
r10.likes << l13
r11.likes << l14
r12.likes << l15
r13.likes << l16
r14.likes << l17
r15.likes << l18
r16.likes << l19
r17.likes << l20
r18.likes << l21
r19.likes << l22
r20.likes << l23
r21.likes << l24

# users and likes
u1.likes << l1 << l4
u2.likes << l2 << l5
u3.likes << l3 << l6 << l7
u4.likes << l8 << l9
u5.likes << l10 << l11 << l12
u6.likes << l13 << l14 << l15
u7.likes << l16 << l17
u8.likes << l18 << l19
u9.likes << l20 << l21
u10.likes << l22 << l23 << l24
