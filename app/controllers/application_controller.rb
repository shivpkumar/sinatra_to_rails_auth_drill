class ApplicationController < ActionController::Base
  protect_from_forgery

  def create_session(user)
    session[:user_id] = user.id
  end
end
