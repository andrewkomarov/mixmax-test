class LocationsController < ApplicationController

  include Geokit::Geocoders

  before_filter  do
    @token = File.open(GlobalConstants::INSTAGRAM_TOKEN_FILE, 'rb') { |file| file.read }
  end

  def list
   @suggestions = []
   if params[:text] && params[:text].length > 5 # do nothing with short keywords (demo)
      @city =  MultiGeocoder.geocode(params[:text])
      client = Instagram.client(:access_token => @token)
      locations = client.location_search(@city.lat.to_f, @city.lng.to_f)
      locations.each do |location|
         @suggestions.push(
            {'title' => location.name, 'text' => location.name, 'resolve' => false}
          )
      end
    end
    render :json => @suggestions
  end

end
