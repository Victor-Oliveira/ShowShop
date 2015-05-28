# -*- encoding : utf-8 -*-
class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @store = Store.find(params[:store_id])
    @products = Product.where(store_id: params[:store_id])
  end

  def show
  end
  
  def new
    @store = Store.find(params[:store_id]) 
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to store_product_url(params[:store_id],@product), notice: 'Produto criado com sucesso.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to store_product_url(params[:store_id],@product), notice: 'Produto atualizado com sucesso.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to store_product_url(params[:store_id],@product), notice: 'Produto excluído com sucesso.' }
      format.json { render :show, status: :created, location: @product }
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :code, :store_id,:picture)
    end

    def set_product
      @store = Store.find(params[:store_id]) unless params[:store_id].nil?
      @product = Product.find(params[:id])
    end

end
