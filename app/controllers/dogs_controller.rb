class DogsController < ApplicationController

  def index
    @dogs = Dog.all 
    json_response(@dogs)
  end

  def show 
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end 

  def create 
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def update 
    @dog = Dog.find(params[:id])
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: "This dog has been updated successfully!"
      }
    end
  end

  def destroy
    @dog = Dog.find(params[:id]) 
    if @dog.destroy
      render status: 200, json: {
        message: "This dog has been successfully deleted!"
      }
    end
  end

  def random
    first = Dog.first.id
    last = first + Dog.count
    dog_id = rand(first...last)
    @dog = Dog.find(dog_id)
    json_response(@dog)
  end

  def search 
    @dogs = Dog.search_dogs(params[:query])
    json_response(@dogs)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def dog_params
    params.permit(:name, :age, :description, :breed)
  end
end