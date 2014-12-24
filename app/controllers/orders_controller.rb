class OrdersController < ApplicationController
  before_action :set_order, only: [:open, :show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.sort
    respond_with(@orders)
  end

  def open
		@suppliers=OrderSupplier.select(:supplier_id).where(:order_id=>params[:id])
		@products=Product.where(supplier_id: @suppliers, :active => true)
		@products.each do |product|
			if Item.where(:product_id=>product.id, :order_id=>params[:id]).exists?
				logger.debug(product.name)
			else
				@item=Item.new()
				@item.order_id=params[:id]
				@item.product_id=product.id
				@item.supplier_id=product.supplier_id
				@item.name=product.name
				@item.note=product.note
				@item.minall=product.minall
				@item.mingroup=product.mingroup
				@item.kgxunit=product.kgxunit
				@item.unittype=product.unittype
				@item.price=product.price
				@item.save
				logger.debug(product.name+ 'new')
			end
		end
 		if @order.state!='Open'
			@order.state='Open'
			if @order.save
	      format.html { redirect_to orders_url, notice: 'Order was successfully updated.' }
	      format.json { head :no_content }
			end
		end
	end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    respond_with(@order)
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:state, :date, :requested, :received, :priceini, :priceend)
    end
end
