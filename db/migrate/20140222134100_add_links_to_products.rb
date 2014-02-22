class AddLinksToProducts < ActiveRecord::Migration
  def change
    add_column :products, :company_url, :text
    add_column :products, :facebook_url, :text
    add_column :products, :twitter_url, :text
  end
end
