class Briefcase
  attr_reader :contents
  
  def initialize(initial_contents)
    @contents = initial_contents || {}
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
end