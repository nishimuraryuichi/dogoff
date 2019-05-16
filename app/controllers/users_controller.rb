class UsersController < ApplicationController
  def index
  end
  def edit
  end
  def update
    if current_usr.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email,:encrypted_password)
  end
end
