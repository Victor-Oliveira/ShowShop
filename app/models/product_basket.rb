class ProductBasket < ActiveRecord::Base
  belongs_to :user
  has_many :products, through: :basket_products
  has_many :basket_products
end
