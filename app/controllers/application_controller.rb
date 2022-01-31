class ApplicationController < ActionController::Base
  before_action :set_current_user
  # since all other controllers inherit from application controller, want this logic here
  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
