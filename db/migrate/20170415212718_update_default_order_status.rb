class UpdateDefaultOrderStatus < ActiveRecord::Migration[5.0]
  def change
    change_column_default :orders, :status, "Ordered"
  end
end
