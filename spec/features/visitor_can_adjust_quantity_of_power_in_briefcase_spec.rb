require 'rails_helper'

RSpec.feature "Visitor visits their briefcase page" do
  before(:each) do
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
    @time_travel = category.powers.create(title: "time travel", description: "You will be able to fly!", price: 5, image_url: "http://www.toonsup.com/users/j/java/time_travel_100417_1424.jpg")
  end
    context "and adds the power quantity" do
      it "" do
        visit powers_path

        within("power_#{@fly.id}") do
          click_on "Add to Briefcase"
        end
        within(".power_#{@time_travel.id}") do
          click_on "Add to Briefcase"
        end
        click_on "View Briefcase"

        expect(current_path).to eq('/briefcase')

        within(".power_#{@fly.id} .quantity") do
          expect(page).to have_content 1
        end

        within(".power_#{@fly.id}") do
          click_on "+"
        end

        expect(current_path).to eq('/briefcase')

        within(".power_#{@fly.id} .quantity") do
          expect(page).to have_content 2
        end
        within(".power_#{@fly.id} .subtotal") do
          expect(page).to have_content "Subtotal: $10"
        end

        within(".total") do
          expect(page).to have_content "Total: $15"
        end
      end
    end

  context "and decreases the power quantity" do
    it "responds" do
      visit powers_path
      within(".power_#{@fly.id}") do
        click_on "Add to Briefcase"
        click_on "Add to Briefcase"
      end
      within(".power_#{@time_travel.id}") do
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"

      expect(current_path).to eq('/briefcase')

      within(".power_#{@fly.id} .quantity") do
        expect(page).to have_content 2
      end

      within(".power_#{@fly.id}") do
        click_on "-"
      end

      expect(current_path).to eq('/briefcase')

      within(".power_#{@fly.id} .quantity") do
        expect(page).to have_content 1
      end
      within(".power_#{@fly.id} .subtotal") do
        expect(page).to have_content "Subtotal: $5"
      end

      within(".total") do
        expect(page).to have_content "Total: $10"
      end
    end
  end
end
