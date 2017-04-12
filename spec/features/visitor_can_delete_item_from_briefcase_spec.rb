require 'rails_helper'

RSpec.feature "Visitor goes to briefcase" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  end
  scenario "and can delete item(s)" do
    visit powers_path

    click_on "Add to Briefcase"
    click_on "View Briefcase"
    click_on "Remove"

    expect(current_path).to eq('/briefcase')
    expect(page).to have_content("Successfully removed flying from your briefcase")
    expect(page).to have_link('flying', href: power_path(@fly))
    expect(page).to_not have_content("You will be able to fly")
  end
end
