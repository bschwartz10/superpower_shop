require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

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
planetary.powers.create!(title: 'Change Street Lights', description: "Never wait for a red light again!", price: 380, image_url: 'http://www.iaapbahamas.com/images/ak3.picdn.net/shutterstock/videos/3568025/preview/stock-footage-street-light-close-up-during-the-day-changing-from-green-to-yellow-to-red-and-then-back-again-in-a.jpg', status: "active")
planetary.powers.create!(title: 'Clairvoyance', description: "Be able to see the future!", price: 230, image_url: 'http://cdn.images.express.co.uk/img/dynamic/106/590x/secondary/royalbaby-278091.jpg', status: "active")
planetary.powers.create!(title: 'Wall Crawling', description: "Climb up building like Spiderman!", price: 430, image_url: 'https://i.ytimg.com/vi/B76ysGuyi7M/maxresdefault.jpg', status: "active")
planetary.powers.create!(title: 'Molecular Dissipation', description: "Chemistry!", price: 530, image_url: 'https://my.vanderbilt.edu/williamfrench/files/2012/08/junctions-only-650x334.jpg', status: "active")

cosmic.powers.create!(title: 'Death Touch', description: "Efficient way to get rid of ex", price: 1000, image_url: 'https://pbs.twimg.com/profile_images/615578805248266240/R_Isocp5.jpg', status: "active")
cosmic.powers.create!(title: 'Never Age', description: "Forever live in the glory days!", price: 1500, image_url: 'https://politicalfilm.files.wordpress.com/2014/11/fountain_of_youth.jpg', status: "active")
cosmic.powers.create!(title: 'Shape Shifting', description: "Shift into any creature you'd like!", price: 2200, image_url: 'http://www.mondolithic.com/wp-content/uploads/2008/04/shape_shifting_robots_new_scientist.jpg', status: "active")
cosmic.powers.create!(title: 'Invisibility', description: "Having a bad hair day....be gone!", price: 3200, image_url: 'https://corymcglone.files.wordpress.com/2012/06/bigdaddykid.jpg', status: "active")
cosmic.powers.create!(title: 'Duplication', description: "Be at as many places you want all at once!", price: 3200, image_url: 'http://networkingstar.com/wp-content/uploads/2011/11/cloning_1929560.jpg', status: "active")
cosmic.powers.create!(title: 'Teleportation', description: "Teleport across the globe!", price: 7400, image_url: 'http://globalpersonals.co.uk/wp-content/uploads/2011/04/spaceballs.jpg', status: "active")
cosmic.powers.create!(title: 'Walk Through Walls', description: "Who needs doors when you can walk through walls!", price: 4200, image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjSS5_1NBxyjLpuzg19o66RzwVjY7n-4pejuzROWguzJ7wzjxK', status: "active")
cosmic.powers.create!(title: 'Time Travel', description: "Visit any time period in history!", price: 11200, image_url: 'http://www.sciencemadesimple.co.uk/files/2016/09/timetravel1.jpg', status: "active")
cosmic.powers.create!(title: 'Resurrection', description: "Bring anyone back from the dead!", price: 17100, image_url: 'http://revelationrevolution.org/wp-content/uploads/2014/11/resurrection-body.jpg', status: "active")
cosmic.powers.create!(title: 'Healer', description: "Be able to heal anyone of any illness!", price: 23100, image_url: 'http://3e3wbl45rvs12ho8zo3xln9s.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/Healing-Super-Power.jpg', status: "active")
