require 'rails_helper'

RSpec.feature "When user visits items index page" do
  scenario "a user can view all items" do
    category = Category.create(title: "cosmic")
    fly = category.powers.create(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
    time_travel = category.powers.create(title: "time travel", description: "You will be able to fly!", price: 5, image_url: "http://www.toonsup.com/users/j/java/time_travel_100417_1424.jpg")

      visit powers_path
save_and_open_page
      expect(page).to have_content "flying"
      expect(page).to have_content "time travel"
  end

end
