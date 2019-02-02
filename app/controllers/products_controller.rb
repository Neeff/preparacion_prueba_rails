class ProductsController < ApplicationController
  before_action :set_products, only: [:show, :edit, :update, :destroy, :set_favourite]
 def index
  @product = Product.new
  @products = Product.all
 end

def create
  @product = Product.new(products_params)
  @product.save
  redirect_to product_path(@product.id)
end
def show
end
def edit
end
def update
  @product.update(products_params)
  redirect_to products_path
end
def destroy
 @product.destroy
 redirect_to products_path
end
def set_favourite
@product.favourite = true
@product.save
redirect_to favourites_path
end
def favourites
  @product = Product.where(favourite: true)
end
private
def products_params
 params.require(:product).permit(:name, :price, :description, :image, :favourite)
end
def set_products
 @product = Product.find(params[:id])
end
end
