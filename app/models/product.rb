class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :orders, through: :order_products
  has_many :order_products
  monetize :price_cents

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :sku ],
    associated_against: {
      category: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
