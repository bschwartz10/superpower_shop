require 'rails_helper'

RSpec.describe Briefcase, type: :model do
  it "can calculate the total number of powers it holds" do
    briefcase = Briefcase.new({"1" => 2, "2" => 3})

    expect(briefcase.total_count).to eq(5)
  end
  
  it "can add an power to its contents" do
    briefcase = Briefcase.new({"1" => 1})
    
    briefcase.add_power(1)
    briefcase.add_power(2)
    
    expect(briefcase.contents).to eq({"1" => 2, "2" => 1})
  end
  
  it "can report on how many of a particular power it has" do
    briefcase = Briefcase.new({"1" => 3, "2" => 1})
    
    expect(briefcase.count_of(1)).to eq(3)
  end
  
end