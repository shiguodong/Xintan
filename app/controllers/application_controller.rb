# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :authorize
  
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

  protected
  
  def  authorize
    unless current_user
      flash[:notice] = "请您登录"
      redirect_to login_path
    end
  end
 
  def current_user
    User.find_by_id(session[:current_user])
  end
 
  def open_registration?
     unless  SystemSeting.first and  SystemSeting.first.open_registration 
       flash[:notice]="抱歉，本系统尚未开放注册"
       redirect_to login_path
     end
  end
end
