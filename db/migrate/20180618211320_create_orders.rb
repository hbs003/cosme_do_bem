class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string "shipping_address"
      t.bigint "user_id"
      t.bigint "product_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "product_sku"
      t.string "state"
      t.jsonb "payment"
      t.integer "amount_cents", default: 0, null: false
      t.index ["product_id"], name: "index_orders_on_product_id"
      t.index ["user_id"], name: "index_orders_on_user_id"
    end
  end
end
