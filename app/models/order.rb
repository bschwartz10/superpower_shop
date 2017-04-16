class Order < ActiveRecord::Base
  has_many :order_powers
  has_many :powers, through: :order_powers
  belongs_to :user
  
  def total
    order_powers.map do |order_power|
      order_power.power_total
    end.reduce(:+)
  end
  
  def quantity
    order_powers.map do |order_power|
      order_power.power_quantity
    end.reduce(:+)
  end
end
