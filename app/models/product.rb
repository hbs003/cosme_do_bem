class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :order_products
  monetize :price_cents
end
