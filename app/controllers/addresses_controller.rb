require 'open-uri'
require 'json'

class AddressesController < ApplicationController

  def new_location
    @new_location = params[:new_location]
  end

  def fetch_coordinates
    @address = params[:new_location]
    @url_safe_address = URI.encode(@address)

    #Your code goes here.
    url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}&sensor=false"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
  end

  


end
