require 'rails_helper'
RSpec.feature "Visitor goes to a powers show page" do
  scenario "and can see the details of that power" do
    category = Category.create(title: "cosmic", slug: "cosmic")
    fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")

    visit power_path(fly)

    expect(page).to have_content("flying")
    expect(page).to have_content("You will be able to fly!")
    expect(page).to have_content("Price: $5")
    expect(page).to have_css("img[src=\"#{fly.image_url}\"]")
  end
end
