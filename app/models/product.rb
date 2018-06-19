class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :orders, through: :order_products
  monetize :price_cents
end
