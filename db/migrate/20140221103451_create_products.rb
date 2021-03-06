class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
