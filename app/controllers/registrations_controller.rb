class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save # see params.md
      session[:user_id] = @user.id # see cookie notes in notes.md
      redirect_to root_path, notice: 'Successfully created account'
    else
      render :new # see params.md
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
