class UnitsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_unit, only: [:show, :edit, :update, :destroy]
	before_action :set_group, only: [:index, :new]

  respond_to :html

  def index
    authorize User
		if @group
			@units = @group.units
		else
	    @units = Unit.all
		end
    respond_with(@units)
  end

  def show
    authorize User
    respond_with(@unit)
  end

  def new
    authorize User
    @unit = Unit.new
    respond_with(@unit)
  end

  def edit
  end

  def create
    authorize User
    @unit = Unit.new(unit_params)
    flash[:notice] = 'Unit was successfully created.' if @unit.save
    respond_with(@unit)
  end

  def update
    authorize User
    flash[:notice] = 'Unit was successfully updated.' if @unit.update(unit_params)
    respond_with(@unit)
  end

  def destroy
    authorize User
    @unit.destroy
    respond_with(@unit)
  end

  private
    def set_unit
      @unit = Unit.find(params[:id])
    end

    def set_group
      @group = Group.find(params[:group_id]) if params[:group_id]
    end


    def unit_params
      params.require(:unit).permit(:group_id, :name, :email, :telefone, :active, :note, :account_id)
    end
end
