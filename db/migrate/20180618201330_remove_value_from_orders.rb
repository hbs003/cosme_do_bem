class RemoveValueFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :value, :float
    remove_column :orders, :date, :date
    remove_column :orders, :status, :string
  end
end
