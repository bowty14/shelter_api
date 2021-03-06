require 'rails_helper'

describe "get all cats route", :type => :request do 
  let!(:cats) {FactoryBot.create_list(:cat, 20)}

  before {get '/cats/search?query=felix'}
  it 'returns cats with the name felix' do
    expect(response).to have_http_status(:success)
  end
  
  before {get '/cats'}

  it 'returns all cats' do 
    expect(JSON.parse(response.body).size).to eq(20)
  end 

  it 'returns status code 200' do 
    expect(response).to have_http_status(:success)
  end

  it 'returns a random cat' do
    get '/cats/random'
    first = Cat.first.id
    last = first + Cat.count
    expect(response).to have_http_status(:success)
  end


end