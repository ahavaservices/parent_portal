class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  before_action :get_profile

  protected

  def get_profile
  	@profile = current_user.profile if current_user
  end

  def layout_by_resource
    if devise_controller? && params[:action] != "edit"
      "login"
    elsif request.original_fullpath.include? "admin"
      "admin"
    else
      "profile"
    end
  end
end
