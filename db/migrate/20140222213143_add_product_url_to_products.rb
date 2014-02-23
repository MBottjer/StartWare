class AddProductUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_url, :text
  end
end
