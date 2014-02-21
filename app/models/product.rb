class Product < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo, :styles => { :medium => "500x400>"}

  def self.limit_description(string)
    string.chars.count > 60 ? string[0...60] + "..." : string
  end



end
