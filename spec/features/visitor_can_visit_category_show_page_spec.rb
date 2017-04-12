require 'rails_helper'

RSpec.feature "When a user visits the categories show page" do
  it "they should see the items associated with that category" do

    category = Category.create(title: "cosmic", slug: "cosmic")
    fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")

      visit '/cosmic'

      expect(current_path).to eq('/cosmic')
      expect(page).to have_content("flying")
  end
end
