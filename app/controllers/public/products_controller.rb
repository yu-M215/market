class Public::ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def product_params
  end
end
