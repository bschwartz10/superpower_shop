class OrderPower < ActiveRecord::Base
  belongs_to :order
  belongs_to :power
end
