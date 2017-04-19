require 'rails_helper'

RSpec.feature "Visitor goes to login page" do
  context "and can enter credentials" do
    it "visitor make an account" do

      visit '/login'

      click_on "create a secret identity"

      fill_in "user[first_name]", with: "Ken"
      fill_in "user[last_name]", with: "Lee"
      fill_in "user[email]", with: "ken@example.com"
      fill_in "user[password]", with: "123abc"
      fill_in "user[password_confirmation]", with: "123abc"

      click_on "create your secret identity"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_text(User.last.first_name)
      expect(page).to_not have_link("Become a Hero")
      expect(page).to have_content("Return to Human")
    end
  end
end
