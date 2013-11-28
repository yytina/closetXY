class SessionController < ApplicationController
  before_action :is_authenticated?, only: [ :destroy ]
  
  def new
    redirect_to root_url if current_user
  end
  
  def create
    
      # attempt to authenticate

      @user = User.find_by(email: params[:email])
      @current_user=@user 
      #temp
      session[:user_id] = @user.id
      redirect_to root_url
  
      # if @user && @user.authenticate(params[:password])
      #   session[:user_id] = @user.id
      #   redirect_to root_url
      # else
      #   render :new, error: "Unable to sign you in. Please try again."
      # end
   
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "You've logged out."
  end
end