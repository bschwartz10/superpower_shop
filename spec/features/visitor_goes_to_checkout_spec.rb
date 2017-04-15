require 'rails_helper'

RSpec.feature "Visitor goes to cart" do
  context "with items in cart and clicks Login or Checkout" do
    xit "visitor is required to login" do

      visit '/cart'

      click_on "Login"

      expect(page).to have_link("Login")
      expect(current_path).to eq('dashboard')

    context "Visitor Registers to Checkout" do
      xit "visitor is rerouted to login page"

      visit '/login'

      expect(current_path).to_not eq('dashboard')
      expect(current_path).to eq('cart')




    end
    end
  end
end
