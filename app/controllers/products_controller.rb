class ProductsController < ApplicationController

  def new
  end

  def create
    @user = current_user
    @product = @user.products.create(product_params)
    redirect_to '/'
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
      params.require(:product).permit(:price, :description, :photo)
    end


end
