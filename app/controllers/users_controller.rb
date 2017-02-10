class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def grantadmin
    @user = User.find(params[:id])
    user = User.find(@user.id)
    if @user.admin?
      user.update_attribute(:admin, false)
    else
      user.update_attribute(:admin, true)
    end
    redirect_to users_path, notice: "Zakutalizowano uprawnienia administratora."
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end

end
