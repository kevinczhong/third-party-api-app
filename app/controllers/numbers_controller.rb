class NumbersController < ApplicationController
  def index
    response = HTTP.get("https://api.veriphone.io/v2/verify?phone=#{params[:number]}&key=ED49E43E873B4D798883DD7E06A174E3")
    render json: response.parse(:json)
  end
end
