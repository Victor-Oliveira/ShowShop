require 'rails_helper'

RSpec.describe "product_baskets/edit", type: :view do
  before(:each) do
    @product_basket = assign(:product_basket, ProductBasket.create!())
  end

  it "renders the edit product_basket form" do
    render

    assert_select "form[action=?][method=?]", product_basket_path(@product_basket), "post" do
    end
  end
end
