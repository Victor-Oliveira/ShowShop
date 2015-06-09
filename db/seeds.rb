# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Store.create(name:"Loja 01", cnpj:"1111111111", description:"descrição", location: "Endereço")
Store.create(name:"Loja 02", cnpj:"2222222222", description:"descrição", location: "Endereço")
Store.create(name:"Loja 03", cnpj:"3333333333", description:"descrição", location: "Endereço")
Store.create(name:"Loja 04", cnpj:"4444444444", description:"descrição", location: "Endereço")
Store.create(name:"Loja 05", cnpj:"5555555555", description:"descrição", location: "Endereço")

Product.create(name:"Produto 01", code:"0101", description:"descrição", price: BigDecimal.new(10), store_id: 1)
Product.create(name:"Produto 02", code:"0102", description:"descrição", price: BigDecimal.new(50), store_id: 1)
Product.create(name:"Produto 03", code:"0103", description:"descrição", price: BigDecimal.new(100), store_id: 1)
Product.create(name:"Produto 01", code:"0201", description:"descrição", price: BigDecimal.new(20), store_id: 2)
Product.create(name:"Produto 02", code:"0202", description:"descrição", price: BigDecimal.new(90), store_id: 2)
Product.create(name:"Produto 01", code:"0301", description:"descrição", price: BigDecimal.new(150), store_id: 3)
Product.create(name:"Produto 02", code:"0302", description:"descrição", price: BigDecimal.new(50), store_id: 3)
Product.create(name:"Produto 01", code:"0401", description:"descrição", price: BigDecimal.new(20), store_id: 4)
Product.create(name:"Produto 02", code:"0402", description:"descrição", price: BigDecimal.new(100), store_id: 4)
Product.create(name:"Produto 03", code:"0403", description:"descrição", price: BigDecimal.new(40), store_id: 4)
Product.create(name:"Produto 04", code:"0404", description:"descrição", price: BigDecimal.new(200), store_id: 4)
Product.create(name:"Produto 01", code:"0501", description:"descrição", price: BigDecimal.new(30), store_id: 5)
Product.create(name:"Produto 02", code:"0502", description:"descrição", price: BigDecimal.new(70), store_id: 5)

['store_owner', 'client', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

User.create(email:"admin@example.com", password:"rootadmin", role_id: 3)
User.create(email:"store_owner@example.com", password:"rootadmin", role_id: 1)
User.create(email:"client@example.com", password:"rootadmin", role_id: 2)