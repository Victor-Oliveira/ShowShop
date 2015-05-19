require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should belong_to :store }
  it { should have_many(:carts).through(:cart_products) }
end
