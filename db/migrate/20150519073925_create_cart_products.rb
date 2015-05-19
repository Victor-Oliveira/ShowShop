class CreateCartProducts < ActiveRecord::Migration
  def change
    create_table :cart_products do |t|
      t.references :cart
      t.references :product

      t.timestamps null: false
    end
  end
end
