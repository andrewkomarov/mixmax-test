class OauthController < ApplicationController

  require 'instagram'

  def connect
    Instagram.configure do |config|
      config.client_id = GlobalConstants::CLIENT_ID
      config.client_secret = GlobalConstants::CLIENT_SECRET
      config.scope = 'public_content'
    end
    redirect_to Instagram.authorize_url :redirect_uri => GlobalConstants::CALLBACK_URI
  end

  # Instagram callback URI
  def authenticate
    response = Instagram.get_access_token params[:code], :redirect_uri => GlobalConstants::CALLBACK_URI
    if response.access_token
      #session[:token] = response.access_token
      File.write(GlobalConstants::INSTAGRAM_TOKEN_FILE, response.access_token)
      redirect_to '/oauth/authenticated'
    end
  end

  def authenticated
  end

end
