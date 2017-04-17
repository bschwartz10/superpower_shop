require 'rails_helper'

RSpec.feature "User visits an item show page" do
  before(:each) do
    @user = User.create(first_name: "v",
                       last_name: "v",
                       email: "pepe@pepe.com",
                       password: "password"
                       )
  end
  it "user is able to add item to cart" do
      category = Category.create(title: "cosmic", slug: "cosmic")
      @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")

      visit power_path(@fly)
      expect(page).to have_content "flying"
      click_on "Add to Briefcase"
  end
  it "user is not able to add item to cart for retired item" do
      category = Category.create(title: "cosmic", slug: "cosmic")
      @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png", status: 'retired')

      visit power_path(@fly)
      expect(page).to_not have_button "Add to Briefcase"
      expect(page).to have_content "Item Retired"
  end

end
