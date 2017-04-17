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
  
  # def increase_or_decrease(type)
  #   if type == "increase"
  #     contents[(params[:power_id].to_s)] += 1
  #   elsif type == "decrease"
  #     contents[(params[:power_id].to_s)] -= 1
  #   else
  #     flash[:notice] = "Minimum quantity is 1"
  #   end
  # end

end
