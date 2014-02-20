class HomepageController < ApplicationController

  def index
    @product = Product.all 
    @user = current_user
  end

end
