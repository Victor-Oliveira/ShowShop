# -*- encoding : utf-8 -*-
class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :products, through: :cart_products
  has_many :cart_products
end
