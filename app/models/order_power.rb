class OrderPower < ActiveRecord::Base
  belongs_to :order
  belongs_to :power
  
  def power_total
    Power.find(power_id).price * power_quantity
  end
end
