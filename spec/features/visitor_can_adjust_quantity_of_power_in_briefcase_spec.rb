require 'rails_helper'

RSpec.feature "Visitor visits their briefcase page" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  end
    scenario "and adds the power quantity" do

    visit powers_path

    click_on "Add to Briefcase"
    click_on "View Briefcase"

    expect(current_path).to eq('/briefcase')

    within(".quantity") do
      expect(page).to have_content 1
    end

    click_on "+"

    expect(current_path).to eq('/briefcase')

    within(".quantity") do
      expect(page).to have_content 2
    end
    # within(".subtotal") do
    #   expect(page).to have_content 10
    # end
    #
    # within(".total") do
    #   expect(page).to have_content 10
    # end

  end
  scenario "and decreases the power quantity" do

  visit powers_path

  click_on "Add to Briefcase"
  click_on "View Briefcase"

  expect(current_path).to eq('/briefcase')

  within(".quantity") do
    expect(page).to have_content 1
  end

  click_on "-"

  expect(current_path).to eq('/briefcase')

  within(".quantity") do
    expect(page).to have_content 0
  end
  # within(".subtotal") do
  #   expect(page).to have_content 10
  # end
  #
  # within(".total") do
  #   expect(page).to have_content 10
  # end

end
end
