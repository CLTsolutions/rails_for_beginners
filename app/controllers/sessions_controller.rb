class SessionsController < ApplicationController
  def destroy
    # getting rid of id (won't exist anymore)
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
