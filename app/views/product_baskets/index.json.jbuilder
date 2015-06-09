json.array!(@product_baskets) do |product_basket|
  json.extract! product_basket, :id
  json.url product_basket_url(product_basket, format: :json)
end
