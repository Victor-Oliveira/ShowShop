# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_one :cart
  after_create :create_cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_cart
  	Cart.create(user_id: self.id)
  end
end
