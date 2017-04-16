class UpdateDefaultPowerQuantityInOrderPowers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :order_powers, :power_quantity, 1
  end
end
