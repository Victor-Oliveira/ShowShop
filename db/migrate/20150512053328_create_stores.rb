# -*- encoding : utf-8 -*-
class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :cnpj
      t.text :description
      t.string :location

      t.timestamps null: false
    end
  end
end
