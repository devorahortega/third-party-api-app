class AirsController < ApplicationController
  def index
    response = HTTP.get("http://api.airvisual.com/v2/countries?key=#{Rails.application.credentials.third_party_api[:api_key]}"))
    render json: response.parse(:json)
  end
end


