require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ProductBasketsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProductBasket. As you add validations to ProductBasket, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductBasketsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all product_baskets as @product_baskets" do
      product_basket = ProductBasket.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:product_baskets)).to eq([product_basket])
    end
  end

  describe "GET #show" do
    it "assigns the requested product_basket as @product_basket" do
      product_basket = ProductBasket.create! valid_attributes
      get :show, {:id => product_basket.to_param}, valid_session
      expect(assigns(:product_basket)).to eq(product_basket)
    end
  end

  describe "GET #new" do
    it "assigns a new product_basket as @product_basket" do
      get :new, {}, valid_session
      expect(assigns(:product_basket)).to be_a_new(ProductBasket)
    end
  end

  describe "GET #edit" do
    it "assigns the requested product_basket as @product_basket" do
      product_basket = ProductBasket.create! valid_attributes
      get :edit, {:id => product_basket.to_param}, valid_session
      expect(assigns(:product_basket)).to eq(product_basket)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProductBasket" do
        expect {
          post :create, {:product_basket => valid_attributes}, valid_session
        }.to change(ProductBasket, :count).by(1)
      end

      it "assigns a newly created product_basket as @product_basket" do
        post :create, {:product_basket => valid_attributes}, valid_session
        expect(assigns(:product_basket)).to be_a(ProductBasket)
        expect(assigns(:product_basket)).to be_persisted
      end

      it "redirects to the created product_basket" do
        post :create, {:product_basket => valid_attributes}, valid_session
        expect(response).to redirect_to(ProductBasket.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved product_basket as @product_basket" do
        post :create, {:product_basket => invalid_attributes}, valid_session
        expect(assigns(:product_basket)).to be_a_new(ProductBasket)
      end

      it "re-renders the 'new' template" do
        post :create, {:product_basket => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested product_basket" do
        product_basket = ProductBasket.create! valid_attributes
        put :update, {:id => product_basket.to_param, :product_basket => new_attributes}, valid_session
        product_basket.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested product_basket as @product_basket" do
        product_basket = ProductBasket.create! valid_attributes
        put :update, {:id => product_basket.to_param, :product_basket => valid_attributes}, valid_session
        expect(assigns(:product_basket)).to eq(product_basket)
      end

      it "redirects to the product_basket" do
        product_basket = ProductBasket.create! valid_attributes
        put :update, {:id => product_basket.to_param, :product_basket => valid_attributes}, valid_session
        expect(response).to redirect_to(product_basket)
      end
    end

    context "with invalid params" do
      it "assigns the product_basket as @product_basket" do
        product_basket = ProductBasket.create! valid_attributes
        put :update, {:id => product_basket.to_param, :product_basket => invalid_attributes}, valid_session
        expect(assigns(:product_basket)).to eq(product_basket)
      end

      it "re-renders the 'edit' template" do
        product_basket = ProductBasket.create! valid_attributes
        put :update, {:id => product_basket.to_param, :product_basket => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested product_basket" do
      product_basket = ProductBasket.create! valid_attributes
      expect {
        delete :destroy, {:id => product_basket.to_param}, valid_session
      }.to change(ProductBasket, :count).by(-1)
    end

    it "redirects to the product_baskets list" do
      product_basket = ProductBasket.create! valid_attributes
      delete :destroy, {:id => product_basket.to_param}, valid_session
      expect(response).to redirect_to(product_baskets_url)
    end
  end

end
