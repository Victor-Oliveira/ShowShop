require 'rails_helper'

RSpec.describe "product_baskets/show", type: :view do
  before(:each) do
    @product_basket = assign(:product_basket, ProductBasket.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
