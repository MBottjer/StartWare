class ProductsController < ApplicationController

  def new
    @post = Post.new 
  end

  def index
    @product = Product.all 
  end

  def create
    @product = Product.new (params[:post].permit(:product_name, :description))
    if @product.save 
      redirect_to @product
    else 
      render 'new'
  end

  def show 
    @product = Product.find(params[:id])
  end

  def update 
    @product = Product.find(params[:id])

    if @product.update(params[:product].permit(:product_name, :description))
      redirect_to @product 
    else 
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:product).permit(:product_name, :description)
  end

end
