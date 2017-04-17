class Briefcase
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def powers
    contents.map do |power_id, quantity|
       BriefcasePower.new(power_id, quantity)
     end
  end

  def total_cost
    total = 0
    contents.each do |power_id, quantity|
      total += (Power.find(power_id).price) * quantity
    end
    total
  end

  def total_count
    contents.values.sum
  end

  def add_power(power_id)
    contents[power_id.to_s] ||= 0
    contents[power_id.to_s] += 1
  end

  def count_of(power_id)
    contents[power_id.to_s]
  end

  def total_contents
    powers.map do |briefcase_power|
      briefcase_power.quantity
    end.reduce(:+)
  end

end
