class HomeController < ApplicationController
	before_action :authenticate_user!

#Check whether the user completed profile or not
  def index
  	if current_user.is_profile?
  		controller_name = 'students'
  		action_name = 'index'
  	else
  		controller_name = 'profiles'
  		action_name = 'edit'
  	end
  	 redirect_to :controller => controller_name,:action => action_name
  end
end
