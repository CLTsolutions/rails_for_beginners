class RegistrationsController < ApplicationController
  def new
    # Create new user in variable (creating instance user)
    # instance variable over regular variable because they're availabie in views
    @user = User.new
  end
end
