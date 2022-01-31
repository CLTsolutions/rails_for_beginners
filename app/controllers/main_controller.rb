class MainController < ApplicationController
  def index
    # moved below to ApplicationController (so accessible everywhere)
    # @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
