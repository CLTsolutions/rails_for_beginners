class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash[:alert] = 'Invalid email or password'
      # renders new action (sessions => new.html.erb)
      render :new
    end
  end

  def destroy
    # getting rid of id (won't exist anymore)
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
