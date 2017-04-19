require 'rails_helper'

RSpec.feature "visitor goes to root page" do
  context "and can click on login" do
    it "types in credentials and be logged in" do

      visit root_path

      expect(page).to have_link "Put on Your Mask"
      within(".nav") do
        click_on "Put on Your Mask"
      end

      expect(current_path).to eq("/login")
      expect(page).to have_field("Email")
      expect(page).to have_field("session[password]")
      expect(page).to have_link("create a secret identity")
    end
  end
end
