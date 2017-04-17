require 'rails_helper'

RSpec.describe Power, type: :model do
  context "relationships" do
    it { should have_many(:order_powers) }
    it { should have_many(:orders) }
    it { should belong_to(:category) }
  end
end
