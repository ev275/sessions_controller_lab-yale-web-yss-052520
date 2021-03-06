class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :logged_in?

  def logged_in?
    if session[:name] == nil
      redirect_to login_path
    end
  end

  def hello 
  end
end