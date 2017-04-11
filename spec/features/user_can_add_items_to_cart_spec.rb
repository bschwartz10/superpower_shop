require 'rails_helper'

RSpec.describe "When a user adds items to cart" do
  before(:each) do
    Power.create!(
    image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png",
    title: "flying",
    description: "You will be able to fly",
    price: 5
    )
  end

  it "a message is displayed" do
    visit "/cart"
    click_button "Add to Cart"

    expect(page).to have_content("You have 1 superpower in your cart")
  end

  it "message correctly increments for multiple items" do
    visit "/cart"
    click_button "Add to Cart"
    expect(page).to have_content("You have 1 superpower in your cart")
    click_button "Add to Cart"

    expect(page).to have("You have 2 superpower(s) in your cart")
  end

  it "the total number of items in  the backpack increments" do
    visit "/cart"
    expect(page).to have_content("Cart: 0")
    click_button "Add to Cart"

    expect(page).to have_content("Cart: 1")
  end
end
