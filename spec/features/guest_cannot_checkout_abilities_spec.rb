require 'rails_helper'

RSpec.feature "checkout abilities" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  end

  context "when a logged-in user visits /briefcase" do
    it "they see an option to checkout" do
      user = User.create(email: "pepe@pepe.com",
                         password: "password"
                         )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit powers_path
      within(".power_1") do
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      expect(page).to have_content("Checkout Abilities")
    end
  end

  context "when a visitor visits /briefcase" do
    it "they do not see an option to checkout" do
      visit powers_path
      within(".power_2") do
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"

      expect(page).to_not have_content("Checkout Abilities")
    end

    it "they create an account, login & see checkout" do
      visit powers_path
      within(".power_3") do
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      click_on("Login or Create Account to Buy Your Abilities!")

    end

  end
end
