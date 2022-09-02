class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params_product)

    redirect_to root_path
  end

  private

  def params_product
    params.require(:product).permit(:name, :tagline)
  end
end
