# -*- encoding : utf-8 -*-
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.text :description
      t.decimal :price
      t.belongs_to :store

      t.timestamps null: false
    end
  end
end
