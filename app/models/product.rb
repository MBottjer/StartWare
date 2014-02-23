class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :product_name, presence: true, length: { maximum: 50 }
  validates :product_url, presence: true
  validates :company_name, presence: true, length: { maximum: 50 }
  validates :price, presence: true
  validates :description, presence: true
  has_attached_file :photo, :styles => { :medium => "500x400>"}
  validates_attachment_presence :photo

  def self.limit_description(string)
    string.chars.count > 60 ? string[0...60] + "..." : string
  end



end
