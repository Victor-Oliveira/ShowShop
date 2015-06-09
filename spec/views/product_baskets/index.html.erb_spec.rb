require 'rails_helper'

RSpec.describe "product_baskets/index", type: :view do
  before(:each) do
    assign(:product_baskets, [
      ProductBasket.create!(),
      ProductBasket.create!()
    ])
  end

  it "renders a list of product_baskets" do
    render
  end
end
