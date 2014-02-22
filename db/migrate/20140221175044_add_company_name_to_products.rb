class AddCompanyNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :company_name, :string
  end
end
