class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include SessionsHelper
  
  def only_if_logged_in
    if !signed_in?
      redirect_to "/signin"
    end
  end
  
  def only_if_admin_loggen_in
    if !current_user.admin
      redirect_to root_path
    end
  end
  
end