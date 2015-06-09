require 'rails_helper'

RSpec.describe ProductBasket, type: :model do
  it { should belong_to :user }
  it { should have_many(:products).through(:basket_products) }
end
