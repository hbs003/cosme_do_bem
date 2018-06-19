class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_products
  monetize :amount_cents

end
