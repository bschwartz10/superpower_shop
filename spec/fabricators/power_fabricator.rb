Fabricator(:power) do
  title { sequence(:title) { |i| "power_#{i}" } }
  description "You will be able to fly!" 
  price 5 
  image_url "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png"
end