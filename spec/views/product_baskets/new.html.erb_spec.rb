require 'rails_helper'

RSpec.describe "product_baskets/new", type: :view do
  before(:each) do
    assign(:product_basket, ProductBasket.new())
  end

  it "renders new product_basket form" do
    render

    assert_select "form[action=?][method=?]", product_baskets_path, "post" do
    end
  end
end
