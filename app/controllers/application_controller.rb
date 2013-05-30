class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def access_token
    session[:access_token]
  end
  helper_method :access_token

end
