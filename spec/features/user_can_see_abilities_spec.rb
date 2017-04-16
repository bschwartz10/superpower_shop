require 'rails_helper'

RSpec.feature "Authenticated user can see abilities" do
  before(:each) do
    @user = User.create(first_name: "v",
                       last_name: "v",
                       email: "pepe@pepe.com",
                       password: "password"
                       )
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")

  end
  xcontext "user can create an abilities order" do
    it "can order" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      visit powers_path
      within(".power_#{@fly.id}") do
        click_on "Add to Briefcase"
      end
      click_on "View Briefcase"
      click_on "Checkout Abilities"
      expect(current_path).to eq(order_path(Order.last))

    end
  end

  context "logged in user visits abilities index" do

    xit "and sees past abilities belonging only to them" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
      order = Order.create!(status: "pending", user_id: @user.id )
      order_power = OrderPower.create(order_id: order.id, power_id: @fly.id)
      visit order_path(order)

      expect(page).to have_content("Abilities Order ##{order.id}")
    end
  end
end
