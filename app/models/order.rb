class Order < ActiveRecord::Base
  has_many :order_powers
  has_many :powers, through: :order_powers
  belongs_to :user

  before_save :status_ordered

  def status_ordered
    update(status: "Ordered")
  end
end
