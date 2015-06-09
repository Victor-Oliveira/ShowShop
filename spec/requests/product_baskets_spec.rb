require 'rails_helper'

RSpec.describe "ProductBaskets", type: :request do
  describe "GET /product_baskets" do
    it "works! (now write some real specs)" do
      get product_baskets_path
      expect(response).to have_http_status(200)
    end
  end
end
