require 'rails_helper'

RSpec.feature "Visitor goes to login page" do
  context "and can enter credentials" do
    it "visitor make an account" do

      visit new_user_path

      fill_in "user[first_name]", with: "Ken"
      fill_in "user[last_name]", with: "Lee"
      fill_in "user[email]", with: "ken@example.com"
      fill_in "user[password]", with: "123abc"
      fill_in "user[password_confirmation]", with: "123abc"

      click_on "Create Account"

      expect(current_path).to eq(user_path(User.last))
      expect(page).to have_content("ken@example.com")
      expect(page).to have_content("Account Created Successfully!")
      expect(page).to have_content("Ken Lee")
    end
  end
end
