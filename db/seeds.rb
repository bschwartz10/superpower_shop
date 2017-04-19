require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

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

category = Category.create(title: 'street level')

category.powers.create(title: 'Dog Walker', description: 'Tired of walking your dog everyday? With this superpower your dog will gladly walk itself!', price: 10, image: File.new(Rails.root + "app/assets/images/dog_walker.jpg"), status: "active")
