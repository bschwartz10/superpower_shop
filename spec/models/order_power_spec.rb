require 'rails_helper'

RSpec.describe OrderPower, type: :model do
  context "relationships" do
    it { should belong_to(:order) }
    it { should belong_to(:power) }
  end
end
