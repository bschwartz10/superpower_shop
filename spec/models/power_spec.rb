require 'rails_helper'

RSpec.describe Power, type: :model do
  context "relationships" do
    it "has many orders" do
      power = Power.create(title: "flying", description: "You will be able to fly!", price: 5, image_url: "http://www.pngall.com/wp-content/uploads/2017/03/Peter-Pan-Free-Download-PNG.png")

      expect(power).to respond_to(:orders)
    end
  end
end
