# -*- encoding : utf-8 -*-
class Cart < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :store
end
