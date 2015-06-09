class AddFieldsToStores < ActiveRecord::Migration
  def change
    add_column :stores, :primary_color, :string
    add_column :stores, :secondary_color, :string
  end
end
