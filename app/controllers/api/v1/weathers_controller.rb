require 'faraday'

class Api::V1::WeathersController < ApplicationController
  before_action :set_weather, only: [:show]

  # GET /weathers
  # GET /weathers.json
  def index    
    local = params[:local]
    
    if (local.to_s.empty?)
      render json: 'Not found', status: 404  
    else
      params = {:query => local, :access_key => "f613d33c4f74fc5b648685dc3428d345"}
      conn = Faraday.get("http://api.weatherstack.com/current", params) do |req|
        req.headers['Content-Type'] = 'application/json'
      end
      render json: conn.body  
    end
  end

end
