class NumbersController < ApplicationController
  def show
    response = HTTP.get("https://api.veriphone.io/v2/verify?phone=#{params[:number]}&key=#{Rails.application.credentials[:api_key]}")
    render json: response.parse(:json)
  end
end
