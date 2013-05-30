class HomePageController < ApplicationController
  def home
    if access_token
      @profiles = HTTParty.get(profiles_url,
        :query => {:access_token => access_token}
      ).parsed_response
      puts "profile: #{@profiles}"
    end
  end

private

  def access_token
    session[:access_token]
  end
  helper_method :access_token

  SINGLY_API_BASE = "https://api.singly.com"

  def profiles_url
    "#{SINGLY_API_BASE}/profiles"
  end
end
