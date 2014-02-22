class HomepageController < ApplicationController

  def index
    @user = current_user
    @products = Product.all.reverse
  end

end
