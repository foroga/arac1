class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @suppliers = Supplier.sort
    respond_with(@suppliers)
  end

  def show
    respond_with(@supplier)
  end

  def new
    @supplier = Supplier.new
    respond_with(@supplier)
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    flash[:notice] = 'Supplier was successfully created.' if @supplier.save
    respond_with(@supplier)
  end

  def update
    flash[:notice] = 'Supplier was successfully updated.' if @supplier.update(supplier_params)
    respond_with(@supplier)
  end

  def destroy
    @supplier.destroy
    respond_with(@supplier)
  end

  private
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:name, :email, :telephone, :url, :active, :note, :frecuency, :ranking, :account_id, :group_id, :watcher_unit_id)
    end
end
