FactoryGirl.define do
  factory :product do
    name "Produto"
    code "0000"
    description "Descrição"
    price BigDecimal.new(1)
  end
end
