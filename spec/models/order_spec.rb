require 'rails_helper'

RSpec.describe Order, type: :model do
  context "relationships" do
    it "has many powers" do
      User.create(first_name: "v",
                         last_name: "v",
                         email: "pepe@pepe.com",
                         password: "password"
                         )
      order = Order.create(status: "pending", user_id: 1 )
      expect(order).to respond_to(:powers)
    end

    it "belongs to a user" do
      User.create(first_name: "v",
                         last_name: "v",
                         email: "pepe@pepe.com",
                         password: "password"
                         )
      order = Order.create(status: "pending", user_id: 1 )

      expect(order).to respond_to(:user)
    end
  end
end
