require 'rails_helper'

RSpec.feature "visitor goes to root page" do
  context "and can click on login" do
    it "types in credentials and be logged in" do

      visit root_path

      expect(page).to have_link "Login"
save_and_open_page
      within(".login") do
        click_on "Login"
      end

      expect(current_path).to eq("/login")
      expect(page).to have_field("Email")
      expect(page).to have_field("Password")
      expect(page).to have_link("Create Account")
    end
  end
end
