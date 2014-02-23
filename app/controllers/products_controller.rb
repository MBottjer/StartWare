class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @user = current_user
    @product = @user.products.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    @user = current_user
    @product = @user.products.find(params[:id])
    @product.destroy
    redirect_to '/'
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update 
    @product = current_user.products.find(params[:id])
    @product.update(product_params)
    redirect_to '/'
  end

  private

    def product_params
      params.require(:product).permit(:price, :description, :photo, :product_name, :company_name, :company_url, :facebook_url, :twitter_url, :product_url, :category_id)
    end


end
