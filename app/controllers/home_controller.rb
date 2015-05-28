class HomeController < ApplicationController
  def index
    @lojas = Store.where.not(logo_file_name: "")
  end
end
