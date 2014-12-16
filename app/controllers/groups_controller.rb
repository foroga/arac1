class GroupsController < ApplicationController
  before_filter :authenticate_user!
	before_action :set_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    authorize User
    @groups = Group.all
		@units = Unit.all
    respond_with(@groups)
  end

  def show
    authorize User
		@units = Unit.all
    respond_with(@group)
  end

  def new
    authorize User
		@units = Unit.all
    @group = Group.new
    respond_with(@group)
  end

  def edit
		@units = Unit.all
  end

  def create
    authorize User
    @group = Group.new(group_params)
    flash[:notice] = 'Group was successfully created.' if @group.save
    respond_with(@group)
  end

  def update
    authorize User
    flash[:notice] = 'Group was successfully updated.' if @group.update(group_params)
    respond_with(@group)
  end

  def destroy
    authorize User
    @group.destroy
    respond_with(@group)
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name, :email, :telefone, :active, :dealtype, :note, :address, :error_unit_id, :acounting_unit_id, :bill_unit_id, :sw_unit_id, :acount_id)
    end
end
