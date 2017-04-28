class BriefcasePower < SimpleDelegator
  attr_reader :quantity

  def initialize(id, quantity)
    @id = id
    @quantity = quantity
    super(Power.find(@id))
  end

  def total_cost
    price * quantity
  end
end
