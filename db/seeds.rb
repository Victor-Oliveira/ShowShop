# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"admin@example.com", password:"rootadmin")

Store.create(name:"Loja 01", cnpj:"1111111111", description:"descrição", location: "Endereço")
Store.create(name:"Loja 02", cnpj:"2222222222", description:"descrição", location: "Endereço")
Store.create(name:"Loja 03", cnpj:"3333333333", description:"descrição", location: "Endereço")
Store.create(name:"Loja 04", cnpj:"4444444444", description:"descrição", location: "Endereço")
Store.create(name:"Loja 05", cnpj:"5555555555", description:"descrição", location: "Endereço")

Product.create(name:"Produto 01", code:"0101", description:"descrição", price: BigDecimal.new(100))
Product.create(name:"Produto 02", code:"0202", description:"descrição", price: BigDecimal.new(90))
Product.create(name:"Produto 03", code:"0303", description:"descrição", price: BigDecimal.new(150))
Product.create(name:"Produto 04", code:"0404", description:"descrição", price: BigDecimal.new(200))
Product.create(name:"Produto 05", code:"0505", description:"descrição", price: BigDecimal.new(70))
