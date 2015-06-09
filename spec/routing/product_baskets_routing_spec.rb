require "rails_helper"

RSpec.describe ProductBasketsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_baskets").to route_to("product_baskets#index")
    end

    it "routes to #new" do
      expect(:get => "/product_baskets/new").to route_to("product_baskets#new")
    end

    it "routes to #show" do
      expect(:get => "/product_baskets/1").to route_to("product_baskets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_baskets/1/edit").to route_to("product_baskets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_baskets").to route_to("product_baskets#create")
    end

    it "routes to #update" do
      expect(:put => "/product_baskets/1").to route_to("product_baskets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_baskets/1").to route_to("product_baskets#destroy", :id => "1")
    end

  end
end
