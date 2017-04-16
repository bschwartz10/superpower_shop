class Power < ActiveRecord::Base
  belongs_to :category
  has_many :order_powers
  has_many :orders, through: :order_powers
end
