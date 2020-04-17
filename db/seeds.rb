# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = "password"

#Create users that have created exchanges on website
bibi = User.create(first_name: "Bibiany", last_name: "Fonseca", username: "bibi", password: password,password_confirmation: password, likes: 0, balance: 10.000)
angela = User.create(first_name: "Angela", last_name: "Sousa", username: "angel", password: password,password_confirmation: password, likes: 0, balance: 10.000)
ana = User.create(first_name: "Ana Luiza", last_name: "Sousa", username: "ana", password: password,password_confirmation: password, likes: 0, balance: 10.000)
# byebug
# Create types of products:
type1 = Type.create(name: "Road")
type2 = Type.create(name: "Mountain Bike")

#Create all Road Bikes that users can select from:
p5 = Product.create(name: "Cervello", type_id: 1, model: "P5", image: "https://racycles.azureedge.net/assets/standard/5929/p5-six.jpg")
p3= Product.create(name: "Cervello", type_id: 1, model: "P3", image: "https://static.evanscycles.com/production/bikes/triathlontt-bikes/product-image/484-319/cervelo-p3-ultegra-2017-triathlon-bike-grey-white-EV309506-7090-1.jpg")
slice = Product.create(name: "Cannondale", type_id: 1, model: "Slice", image: "https://www.active.com/Assets/slice+4.png")
ttx = Product.create(name: "Trek", type_id: 1, model: "TTX 9.9", image: "https://static.evanscycles.com/production/bikes/triathlontt-bikes/product-image/484-319/trek-equinox-ttx-9-9-2010-triathlon-bike-00128721-9999-1.jpg")
time_machine = Product.create(name: "BMC", type_id: 1, model: "TimeMachine", image: "https://static.evanscycles.com/production/bikes/triathlontt-bikes/product-image/484-319/bmc-timemachine-tm01-ultegra-di2-2017-triathlon-bike-black-EV290235-8500-1.jpg")
plasma = Product.create(name: "Scott", type_id: 1, model: "Plasma 5", image: "https://images.immediate.co.uk/production/volatile/sites/21/2019/03/1405433154550-15do7uhpv5uqf-7686272.jpg?quality=90&resize=960%2C540")

#Create all Mountain Bikes that users can select from:
bad_habit = Product.create(name: "Cannondale", type_id: 2, model: "Bad Habit", image: "https://vader-prod.s3.amazonaws.com/1569600481-cannondale-bad-habit-32-1569419878.jpg")
f_si = Product.create(name: "Cannondale", type_id: 2, model: "F SI", image: "https://bikerumor.com/wp-content/uploads/2018/05/Cannondale-F-Si-Lefty-Ocho-Carbon_carbon-xc-race-hardtail-mountain-bike_single-sided-single-crown-100mm-fork-strut_World-Cup-forest.jpg")
team_elite = Product.create(name: "BMC", type_id: 2, model: "Team Elite", image: "https://racycles.azureedge.net/assets/standard/85007/Teamelite-01_ONE_cbn-red-gry_18.jpg")
stash = Product.create(name: "Trek", type_id: 2, model: "Stash 9", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjtNJ4fx7cll4TBaOuxgODdwYJPZ26-FkdX6iTirCY8V9PC5-z&usqp=CAU")
contessa = Product.create(name: "Scott", type_id: 2, model: "Spark", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRp3XO6QRP_LJTK6u4H8INuqUpVG5-7OEo6wbULPbjbujpiOUJD&usqp=CAU")

#Create listings for each product
listing_road_1 = Listing.create(user_id: angela.id, product_id: p5.id, condition: "used", make: "Cervello", size: "54", price: 5.000, description: "Had this bike for 3 years, barely used")
listing_road_2 = Listing.create(user_id: bibi.id, product_id: p3.id, condition: "used", make: "Cervello", size: "56", price: 4.954, description: "Buy today and get 500 off")
listing_road_3 = Listing.create(user_id: angela.id, product_id: slice.id, condition: "used", make: "Cannondale", size: "52", price: 5.000, description: "I can do payments if you're willing for a credit score check")
listing_road_4 = Listing.create(user_id: bibi.id, product_id: time_machine.id, condition: "used", make: "BMC", size: "56", price: 6.111, description: "Got a brand new bike, gotta sell this one")
listing_road_5 = Listing.create(user_id: bibi.id, product_id: plasma.id, condition: "used", make: "Scott", size: "54", price: 3.000, description: "Best bike I ever had, but I need the money")

listing_mountain_1 = Listing.create(user_id: angela.id, product_id: bad_habit.id, condition: "used", make: "Cannondale", size: "16", price: 5.000, description: "Had this bike for 5 years, barely used")
listing_mountain_2 = Listing.create(user_id: bibi.id, product_id: f_si.id, condition: "used", make: "Cannondale", size: "17", price: 5.954, description: "Had this bike for 2 years, barely used")
listing_mountain_3 = Listing.create(user_id: angela.id, product_id: team_elite.id, condition: "used", make: "BMC", size: "15", price: 7.000, description: "Had this bike for 1 years, barely used")
listing_mountain_4 = Listing.create(user_id: bibi.id, product_id: stash.id, condition: "used", make: "Trek", size: "13", price: 4.111, description: "Had this bike for 3 years, barely used")
listing_mountain_5 = Listing.create(user_id: bibi.id, product_id: contessa.id, condition: "used", make: "Scott", size: "16", price: 5.000, description: "Had this bike for 4 years, barely used")

#Create reviews for each product
review_p5 = Review.create(product_id: p5.id, user_id: bibi.id, content: "Had this bike for 3 years, barely used")
review_p3 = Review.create(product_id: p3.id, user_id: bibi.id, content: "Buy today and get 500 off")
review_slice = Review.create(product_id: slice.id, user_id: angela.id, content: "I can do payments if you're willing for a credit score check")
review_ttx = Review.create(product_id: ttx.id, user_id: angela.id, content: "Got a brand new bike, gotta sell this one")
review_time_machine = Review.create(product_id: time_machine.id, user_id: bibi.id, content: "Best bike I ever had, but I need the money")
review_plasma = Review.create(product_id: plasma.id, user_id: bibi.id, content: "Best bike I ever had, but I need the money")
review_bad_habit= Review.create(product_id: bad_habit.id, user_id: bibi.id, content: "Best bike I ever had, but I need the money")
review_f_si = Review.create(product_id: f_si.id, user_id: angela.id, content: "Best bike I ever had, but I need the money")
review_team_elite = Review.create(product_id: team_elite.id, user_id: angela.id, content: "Best bike I ever had, but I need the money")
rareview_contessa = Review.create(product_id: contessa.id, user_id: angela.id, content: "Best bike I ever had, but I need the money")
