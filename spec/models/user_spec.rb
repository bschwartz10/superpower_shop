require 'rails_helper'

RSpec.describe Power, type: :model do
  context "relationships" do
    it "has many orders" do
      user = User.create(first_name: "v",
                         last_name: "v",
                         email: "pepe@pepe.com",
                         password: "password"
                         )

      expect(user).to respond_to(:orders)
    end
  end
end
