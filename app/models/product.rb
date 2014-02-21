class Product < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo, :styles => { :medium => "500x500>"}
end
