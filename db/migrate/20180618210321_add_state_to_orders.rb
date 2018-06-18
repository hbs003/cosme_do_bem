class AddStateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :product_sku, :string
    add_column :orders, :state, :string
    add_monetize :products, :amount, currency: { present: false }
    add_column :orders, :payment, :jsonb

  end
end
