require 'rails_helper'

RSpec.feature "User see past order" do
  before(:each) do
    @user = User.create(first_name: "v",
                       last_name: "v",
                       email: "pepe@pepe.com",
                       password: "password"
                       )
    category = Category.create(title: "cosmic", slug: "cosmic")
    @fly = category.powers.create!(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")
  
  end

  xit "User can cancel order" do
    @order = Order.create!(status: "Ordered", user_id: @user.id )
    @order_power = OrderPower.create(order_id: @order.id, power_id: @fly.id)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)

    visit orders_path
    expect(page).to have_link("Abilities Order ##{@order.id}")
    click_on "Abilities Order ##{@order.id}"
    
    click_on "Cancel Order"
    expect(@order.status).to eq "Cancelled"
    expect(current_path).to eq powers_path
  end

  it "when user visits the order index page" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    
    visit powers_path
    within(".power_#{@fly.id}") do
      click_on "Add to Briefcase"
    end
    within(".power_#{@fly.id}") do
      click_on "Add to Briefcase"
    end
    click_on "View Briefcase"
    click_on "Checkout Abilities"

    # I should see each item that was order with the quantity and line-item subtotals
    expect(page).to have_link("flying Power")
    expect(page).to have_content("Ordered")
    expect(page).to have_content("5")
    expect(page).to have_content(Order.last.created_at)
    expect(page).to have_content("Power Quantity: 2")
    expect(page).to have_content("Power Subtotal: $10")
    expect(page).to have_content("Order Total: $10")
    
  end
end
