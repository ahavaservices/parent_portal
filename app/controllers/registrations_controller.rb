 class RegistrationsController < Devise::RegistrationsController
    before_filter :configure_permitted_parameters


  # GET /users/sign_up
  def new
    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_profile
    respond_with self.resource
  end

  def create
     if !verify_recaptcha
      flash.delete :recaptcha_error
      build_resource(sign_up_params)
      resource.build_profile
      resource.valid?
      resource.errors.add(:base, "There was an error with the recaptcha code below. Please re-enter the code.")
      clean_up_passwords(resource)
      respond_with_navigational(resource) { render :new }
    else
      flash.delete :recaptcha_error
      super
    end 
  end
    
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u|
      u.permit(:email, :password, :password_confirmation, :profile_attributes => [:first_name, :last_name])
    }
  end
 end