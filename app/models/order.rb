class Order < ActiveRecord::Base
  has_many :order_powers
  has_many :powers, through: :order_powers
  belongs_to :user
  
  default_scope { order(:created_at) }
  
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
  
  def created_time
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
  
  def updated_time
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end
  
  def self.type_count(type)
    where(status: type).pluck(:status).count
  end
  
  def update_status(type)
    if type == "cancel"
      update(status: "Cancelled")
    elsif type == "pay"
      update(status: "Paid")
    elsif type == "complete"
      update(status: "Completed")
    end
  end
  
  def update_status_restricted
    update(status: "Cancelled")
  end
end
