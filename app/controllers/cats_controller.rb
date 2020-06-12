class CatsController < ApplicationController

  def index
    @cats = Cat.all 
    json_response(@cats)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end