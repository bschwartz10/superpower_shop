class AddStatusToPower < ActiveRecord::Migration[5.0]
  def change
    add_column :powers, :status, :string, :default => 'active'
  end
end
