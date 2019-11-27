class SessionsController < ApplicationController
  layout "home_layout"

  def new
    @user = User.new
    @users = User.all
  end

  def create_facebook_user
    @user = User.find_or_create_by!(uid: auth['uid']) do |u|
      u.password = SecureRandom.urlsafe_base64
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
 
    session[:user_id] = @user.id
 
    redirect_to root_path
  end

  def create
    auth = request.env["omniauth.auth"]
  if auth
    create_facebook_user
  else
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end
end