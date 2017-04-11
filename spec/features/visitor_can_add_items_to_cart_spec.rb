require 'rails_helper'

RSpec.feature "When a user visits the items index page" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  end
  context "they should see all the items in the store" do
    it "and they click on an item's add to cart button" do
      visit powers_path

      click_on "Add to Briefcase"
      expect(current_path).to eq powers_path
      expect(page).to have_content("You now have 1 flying")
    end

    it "the message increments for multiple powers" do
      visit powers_path
      click_on "Add to Briefcase"
      expect(page).to have_content("You now have 1 flying")
      click_on "Add to Briefcase"
      expect(page).to have_content("You now have 2 flyings")
    end
    
    it "and they click to view cart" do
      visit powers_path
      click_on "View Briefcase"
    
      expect(current_path).to eq("/briefcases")
      expect(page).to have_content("flying")
      expect(page).to have_content("You will be able to fly!")
      expect(page).to have_content(5)
      expect(page).to have_css("img[src=\"#{fly.image_url}\"]")
      # expect(page).to have_content(fly.image_url)
      expect(page).to have_content("Total: 5")
    end
  end
end
