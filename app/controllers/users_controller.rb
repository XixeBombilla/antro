class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
    
  layout "admin"
  
  
  before_filter :login_required, :only => :new

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "Gracias por dar de alta!  Mandaremos un correo al usuario con su activacion."
    else
      flash[:error]  = "Lo sentimos, no pudimos dar de alta a este usuario, porfavor intente nuevamente."
      render :action => 'new'
    end
  end
end
