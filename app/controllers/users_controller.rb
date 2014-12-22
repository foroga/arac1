class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized

  def index
		@units = Unit.all
		if params[:unit_id]
			@users = Unit.find(params[:unit_id]).users
		else
	    @users = User.sort
		end
    authorize User
  end

  def show
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    authorize @user
    @user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_unit
      @unit = Unit.find(params[:unit_id])
    end

		def secure_params
		  params.require(:user).permit(:name, :surname, :active, :role, :telephone, :unit_id)
		end
end
