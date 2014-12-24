class OrderSuppliersController < ApplicationController
  before_action :set_order_supplier, only: [:show, :edit, :update, :destroy]
	before_action :set_order, only: [:index, :new]

  respond_to :html

  def index
		if @order
			@order_suppliers = @order.order_suppliers
		else
	    @order_suppliers = OrderSupplier.all
		end
    respond_with(@order_suppliers)
  end

  def show
    respond_with(@order_supplier)
  end

  def new
    @order_supplier = OrderSupplier.new({:order_id => params[:order_id]})
    respond_with(@order_supplier)
  end

  def edit
  end

  def create
    @order_supplier = OrderSupplier.new(order_supplier_params)
    @order_supplier.save
    respond_with(@order_supplier)
  end

  def update
    @order_supplier.update(order_supplier_params)
    respond_with(@order_supplier)
  end

  def destroy
    @order_supplier.destroy
    respond_with(@order_supplier)
  end

  private
    def set_order_supplier
      @order_supplier = OrderSupplier.find(params[:id])
    end

    def set_order
      @order = Order.find(params[:order_id]) if params[:order_id]
    end

    def order_supplier_params
      params.require(:order_supplier).permit(:order_id, :supplier_id, :group_id, :position)
    end
end
