class Product < ActiveRecord::Base

  validates :product_name, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 2}

end
