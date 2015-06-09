# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_one :cart
  has_one :product_basket

  after_create :create_cart
  after_create :create_product_basket

  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_cart
  	Cart.create(user_id: self.id)
  end

  def create_product_basket
    ProductBasket.create(user_id: self.id)
  end

  def admin?
    self.role.id == 3 ? true : false
  end

  def store_owner?
    self.role.id == 1 ? true : false
  end
end
