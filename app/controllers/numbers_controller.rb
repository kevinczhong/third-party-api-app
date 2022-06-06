class NumbersController < ApplicationController
  def index
    response = HTTP.get("https://api.veriphone.io/v2/verify?phone=#{params[:number]}&key=#{Rails.application.credentials.phone_api[:api_key]}")
    render json: response.parse(:json)
  end
end
