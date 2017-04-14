require 'rails_helper'

RSpec.feature "checkout abilities" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  end
  
  context "when a logged-in user visits /briefcase" do
    it "they see an option to checkout" do
      user = User.create(first_name: "v",
                         last_name: "v",
                         email: "pepe@pepe.com",
                         password: "password"
                         )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit powers_path
      within(".power_#{@fly.id}") do 
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      expect(page).to have_button("checkout_btn")
    end
  end
  
  context "when a visitor visits /briefcase" do
    it "they do not see an option to checkout" do
      visit powers_path
      within(".power_#{@fly.id}") do 
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      
      expect(page).to_not have_button("checkout_btn")
    end

    it "they create an account, login & see checkout" do
      visit powers_path
      within(".power_#{@fly.id}") do 
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      click_on("Login or Create Account to Buy Your Abilities!")
      click_on "Create Account"

      fill_in "user[first_name]", with: "Ken"
      fill_in "user[last_name]", with: "Lee"
      fill_in "user[email]", with: "ken@example.com"
      fill_in "user[password]", with: "123abc"
      fill_in "user[password_confirmation]", with: "123abc"

      click_on "Create Account"
      visit briefcase_path
      
      expect(page).to have_content("flying")
      expect(page).to have_content("Quantity: 1")
      
      click_on "Logout"
      expect(page).to have_content("Login")
      expect(page).to_not have_content("Logout")
      
    end
    
  end
end