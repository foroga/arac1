class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
		if params[:supplier_id]
			@products = Supplier.find(params[:supplier_id]).products
		else
	    @products = Product.all
		end
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:supplier_id, :name, :imageurl, :active, :note, :minall, :mingroup, :minunit, :kgxunit, :unittype, :price, :priceold)
    end
end
