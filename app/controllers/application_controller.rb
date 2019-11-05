class ApplicationController < ActionController::Base
    before_action :current_user
    before_action :require_logged_in, except: [:new, :create, :home]

  def logged_in?
    !!current_user
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect to root_path unless logged_in?
  end

  helper_method :current_user
end
