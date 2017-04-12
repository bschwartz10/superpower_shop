require 'rails_helper'

RSpec.describe Category, type: :model do
  context "relationships" do
    it "has many items" do
      category = Category.create(title: "cosmic")

      expect(category).to respond_to(:powers)
    end
  end

end
