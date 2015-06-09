class ProductBasketsController < ApplicationController
  before_action :set_product_basket, only: [:show, :edit, :update, :destroy]

  # GET /product_baskets
  # GET /product_baskets.json
  def index
    @product_baskets = ProductBasket.all
  end

  # GET /product_baskets/1
  # GET /product_baskets/1.json
  def show
  end

  # GET /product_baskets/new
  def new
    @product_basket = ProductBasket.new
  end

  # GET /product_baskets/1/edit
  def edit
  end

  # POST /product_baskets
  # POST /product_baskets.json
  def create
    @product_basket = ProductBasket.new(product_basket_params)

    respond_to do |format|
      if @product_basket.save
        format.html { redirect_to @product_basket, notice: 'Product basket was successfully created.' }
        format.json { render :show, status: :created, location: @product_basket }
      else
        format.html { render :new }
        format.json { render json: @product_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_baskets/1
  # PATCH/PUT /product_baskets/1.json
  def update
    respond_to do |format|
      if @product_basket.update(product_basket_params)
        format.html { redirect_to @product_basket, notice: 'Product basket was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_basket }
      else
        format.html { render :edit }
        format.json { render json: @product_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_baskets/1
  # DELETE /product_baskets/1.json
  def destroy
    @product_basket.destroy
    respond_to do |format|
      format.html { redirect_to product_baskets_url, notice: 'Product basket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_basket
      @product_basket = ProductBasket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_basket_params
      params[:product_basket]
    end
end
