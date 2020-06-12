require 'rails_helper'

describe "delete a cat route", :type => :request do
  
  before do
    @cat = Cat.create({:id => 1 , :name => 'Angel', :age => 5, :description => 'Vegan scenester pitchfork gentrify cliche 8-bit yr seitan twee shoreditch heirloom wolf humblebrag.', :breed => 'American Shorthair'})
    delete '/cats/1'
  end

  it 'returns the deleted response' do
    expect(JSON.parse(response.body)['message']).to eq('This cat has been successfully deleted!')
  end

  it 'returns a deleted status' do
    expect(response).to have_http_status(200)
  end
end