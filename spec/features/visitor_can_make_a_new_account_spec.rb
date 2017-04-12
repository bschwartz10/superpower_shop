require 'rails_helper'

RSpec.feature "visitor goes to root page" do
  context "and can click on login" do
    it "types in credentials and be logged in" do

      visit root_path

      expect(page).to have_link "Login"
      click_on "Login"
      expect(current_path).to eq("/login")
      expect(page).to have_field("username")
      expect(page).to have_field("password")
      expect(page).to have_link("Create Account")
    end
  end
end
