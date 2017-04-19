# require 'database_cleaner'
#
# DatabaseCleaner.strategy = :truncation
# DatabaseCleaner.clean

# categories = ["street level", "planetary", "cosmic"]
# urls = ["http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png", "http://www.toonsup.com/users/j/java/time_travel_100417_1424.jpg", "https://sparketh.com/wp-content/uploads/2015/08/Kid-super-power-881x588.jpg", "http://blog.scribd.com/wp-content/uploads/2016/03/superhero.png", "http://quizsocial.com/quimg/superpower/results/2.jpg","http://usa.chinadaily.com.cn/weekly/img/attachement/jpg/site181/20120406/00221917e13e10e8845b3e.jpg"]
#
# categories.each do |title|
#   category = Category.create!(title: title)
#   puts "Created #{category.title}"
#   10.times do |num|
#     category.powers.create!(title: Faker::Superhero.power, description: "This super power is awesome!", price: num + rand(100), image_url: urls.sample)
#     puts "Created #{category.powers[num].title}"
#   end
# end
street_level = Category.create(title: 'street level')
planetary = Category.create(title: 'planetary')
cosmic = Category.create(title: 'cosmic')
street_level.powers.create!(title: 'Impervious to Tongue Burn', description: 'Never again will you burn your tounge on hot coffee of pizza!', price: 1, image: File.new(Rails.root + "app/assets/images/tongue_fire.jpg"), status: "active")
street_level.powers.create!(title: 'Always Fit', description: 'Gain a perfectly fit body without every exercising!', price: 20, image: File.new(Rails.root + "app/assets/images/workout_couple.jpg"), status: "active")
street_level.powers.create!(title: "Teeth Aren't Sensitive to the Cold", description: 'Be able to drink that ice cold lemonade without hurting your teeth!', price: 4, image: File.new(Rails.root + "app/assets/images/ice_cube.jpg"), status: "active")
street_level.powers.create!(title: "Showers Always Hot", description: 'Never again will you have to wait for the shower to heat up in the morning!', price: 10, image: File.new(Rails.root + "app/assets/images/shower.jpg"), status: "active")
street_level.powers.create!(title: "Unlimited Supply of Wine", description: 'Unlimited win for Wine Wedesdays!', price: 12, image: File.new(Rails.root + "app/assets/images/wine.jpg"), status: "active")
street_level.powers.create!(title: "No Work on Monday", description: 'No sunday scaries for you!', price: 15, image: File.new(Rails.root + "app/assets/images/sleeping.jpg"), status: "active")
street_level.powers.create!(title: "Never Lose your Hair", description: 'No more hats needed for you!', price: 130, image: File.new(Rails.root + "app/assets/images/hair.jpg"), status: "active")
street_level.powers.create!(title: "Dominate the Dance Floor", description: "Where's the dance floor?", price: 150, image: File.new(Rails.root + "app/assets/images/dance.jpg"), status: "active")
street_level.powers.create!(title: 'Perfect Nails', description: 'Tired of chipped nails? With this superpower you will have indestructible nails!', price: 2, image: File.new(Rails.root + "app/assets/images/perfect_nails.jpg"), status: "active")
street_level.powers.create!(title: 'Dog Walker', description: 'Tired of walking your dog everyday? With this superpower your dog will gladly walk itself!', price: 10, image: File.new(Rails.root + "app/assets/images/dog_walker.jpg"), status: "active")
