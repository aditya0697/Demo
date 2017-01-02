class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create]
  #def create
    #  super do
    #    resource.mobile = params[:mobile]
    #    resource.save
    #  end
  #end


  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :phone_number, :usertype, :username, :firstname, :lastname) }
   end


end
