# matches file name (capitalize and remove underscore)
# inheriting from application controller to get all the functionality from rails
class AboutController < ApplicationController
  # defines action in here (for this file index is the action)
  # doesn't have to do anything since it's inheriting from ApplicationController
  # method index because routes "about#index"
  # renders index.html.erb
  def index; end
end
