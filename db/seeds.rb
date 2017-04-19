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

street_level.powers.create!(title: 'Impervious to Tongue Burn', description: 'Never again will you burn your tounge on hot coffee of pizza!', price: 1, image_url: 'https://i.ytimg.com/vi/N5wRGVHatbQ/hqdefault.jpg', status: "active")
street_level.powers.create!(title: 'Always Fit', description: 'Gain a perfectly fit body without every exercising!', price: 20, image_url: 'https://s-media-cache-ak0.pinimg.com/originals/a8/e1/39/a8e139fbf134114f88e7a0a9101fcea6.jpg', status: "active")
street_level.powers.create!(title: "Teeth Aren't Sensitive to the Cold", description: 'Be able to drink that ice cold lemonade without hurting your teeth!', price: 4, image_url: 'http://quintype-01.imgix.net/thequint/2015-12/f777dc37-cad3-4b69-9d14-5a4a287e0315/ice%20cubes%20hero%20image%201.jpg', status: "active")
street_level.powers.create!(title: "Showers Always Hot", description: 'Never again will you have to wait for the shower to heat up in the morning!', price: 10, image_url: 'https://s-media-cache-ak0.pinimg.com/736x/53/25/c4/5325c499110828d08fd685d97330ed20.jpg', status: "active")
street_level.powers.create!(title: "Unlimited Supply of Wine", description: 'Unlimited win for Wine Wedesdays!', price: 12, image_url: 'http://cdn.funcheap.com/wp-content/uploads/2013/07/d71554edfc9af9f3_wine1.jpg', status: "active")
street_level.powers.create!(title: "No Work on Monday", description: 'No sunday scaries for you!', price: 15, image_url: 'http://media4.s-nbcnews.com/i/newscms/2015_50/897431/dog-sleeping-in-bed-today-stock-tease-151211_cd9853550900e9ecd3678bd8dd6ead7b.jpg', status: "active")
street_level.powers.create!(title: "Never Lose your Hair", description: 'No more hats needed for you!', price: 130, image_url: 'https://s-media-cache-ak0.pinimg.com/originals/9c/29/03/9c290348c7e27f3e141d06aaf71ad565.jpg', status: "active")
street_level.powers.create!(title: "Dominate the Dance Floor", description: "Where's the dance floor?", price: 150, image_url: 'http://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_534/saturday-night-fever-au-palais-des-sports-%7C-630x405-%7C-%C2%A9-dr/15374425-1-fre-FR/Saturday-Night-Fever-au-Palais-des-Sports-%7C-630x405-%7C-%C2%A9-DR.jpg', status: "active")
street_level.powers.create!(title: 'Perfect Nails', description: 'Tired of chipped nails? With this superpower you will have indestructible nails!', price: 2, image_url: 'https://aos.iacpublishinglabs.com/question/aq/1400px-788px/can-someone-perfect-nails_9cdffab021f3763f.jpg?domain=cx.aos.ask.com', status: "active")
street_level.powers.create!(title: 'Dog Walker', description: 'Tired of walking your dog everyday? With this superpower your dog will gladly walk itself!', price: 10, image_url: 'http://68.media.tumblr.com/tumblr_m6cp9yBltZ1qggwnvo1_1280.jpg', status: "active")


planetary.powers.create!(title: 'Change Identities For a Day', description: 'Have the ability to switch identities with whomever you want for a day!', price: 100, image_url: 'http://www.craveonline.com/images/stories/2011/2011/July/Film/the-change-up.jpg', status: "active")
planetary.powers.create!(title: 'Borrow Vision', description: "Be able to see the world through other people's vision", price: 130, image_url: 'http://mac.h-cdn.co/assets/15/13/980x490/landscape-1427654703-eye-color.jpg', status: "active")
planetary.powers.create!(title: 'Levitation', description: "Leviatate freely around the world!", price: 170, image_url: 'https://petapixel.com/assets/uploads/2015/02/levitation-5.jpg', status: "active")
planetary.powers.create!(title: 'Super Speed', description: "Run faster than Usian Bolt!", price: 120, image_url: 'https://static.gigwise.com/gallery/8178599_dash.jpg', status: "active")
planetary.powers.create!(title: 'flying', description: "The best power ever!", price: 230, image_url: 'http://www.hooch.net/wp-content/uploads/sites/2/2017/01/how-would-life-be-better-as-a-cartoon.jpg', status: "active")
planetary.powers.create!(title: 'Breathe Under Water', description: "Swim with the fishes", price: 180, image_url: 'http://cdn.inquisitr.com/wp-content/uploads/2014/04/Breathe-Underwater-Injectable-Oxygen-Particle-May-Make-Dream-Reality.jpg', status: "active")
planetary.powers.create!(title: 'Change Street Lights', description: "Never wait for a red light again!", price: 380, image_url: 'https://cdn.pixabay.com/photo/2013/11/10/10/42/traffic-lights-208253_960_720.jpg', status: "active")
planetary.powers.create!(title: 'Clairvoyance', description: "Be able to see the future!", price: 230, image_url: 'http://cdn.images.express.co.uk/img/dynamic/106/590x/secondary/royalbaby-278091.jpg', status: "active")
planetary.powers.create!(title: 'Wall Crawling', description: "Climb up building like Spiderman!", price: 430, image_url: 'https://i.ytimg.com/vi/B76ysGuyi7M/maxresdefault.jpg', status: "active")
planetary.powers.create!(title: 'Molecular Dissipation', description: "Chemistry!", price: 530, image_url: 'https://my.vanderbilt.edu/williamfrench/files/2012/08/junctions-only-650x334.jpg', status: "active")
