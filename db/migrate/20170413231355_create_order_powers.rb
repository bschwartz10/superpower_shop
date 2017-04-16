class CreateOrderPowers < ActiveRecord::Migration[5.0]
  def change
    create_table :order_powers do |t|
      t.references :order, foreign_key: true
      t.references :power, foreign_key: true
    end
  end
end
