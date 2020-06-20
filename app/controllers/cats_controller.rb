class CatsController < ApplicationController

  def index
    @cats = Cat.all 
    json_response(@cats)
  end

  def show 
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end 

  def create 
    @cat = Cat.create!(cat_params)
    json_response(@cat)
  end

  def update 
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
        message: "This cat has been updated successfully!"
      }
    end
  end

  def destroy
    @cat = Cat.find(params[:id]) 
    if @cat.destroy
      render status: 200, json: {
        message: "This cat has been successfully deleted!"
      }
    end
  end

  def random
    first = Cat.first.id
    last = first + Cat.count
    cat_id = rando(first...last)
    @cat = Cat.find(cat_id)
    json_response(@cat)
  end

  def search 
    @cats = Cat.search_cats(params[:query])
    json_response(@cats)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def cat_params
    params.permit(:name, :age, :description, :breed)
  end
end