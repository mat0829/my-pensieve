class ApplicationController < ActionController::Base
    before_action :current_user
    before_action :redirect_if_not_logged_in, except: [:new, :create, :create_facebook_user, :home]

  def logged_in?
    !!current_user
  end

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect_to root_path unless logged_in?
  end

  helper_method :current_user, :logged_in?
end
