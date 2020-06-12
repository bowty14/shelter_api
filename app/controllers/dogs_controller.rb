class DogsController < ApplicationController

  def index
    @dogs = Dog.all 
    json_response(@dogs)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end