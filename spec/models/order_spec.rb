require 'rails_helper'

RSpec.describe Order, type: :model do
  context "relationships" do
    it { should have_many(:powers) }
    it { should have_many(:order_powers) }
    it { should belong_to(:user) }
  end
end
