class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  monetize :amount_cents

end
