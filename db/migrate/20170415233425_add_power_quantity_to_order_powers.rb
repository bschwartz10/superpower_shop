class AddPowerQuantityToOrderPowers < ActiveRecord::Migration[5.0]
  def change
    add_column :order_powers, :power_quantity, :integer, default: 0
  end
end
