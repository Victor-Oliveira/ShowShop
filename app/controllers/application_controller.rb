# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action {
    unless current_user.nil?
      current_user.cart = Cart.find_or_create_by(user_id: current_user.id)
      @cart = current_user.cart
    end
  }

end
