require 'rails_helper'

describe "Put a cat route", :type => :request do
  
  before do
    @cat = Cat.create({:id => 1 , :name => 'Angel', :age => 5, :description => 'Vegan scenester pitchfork gentrify cliche 8-bit yr seitan twee shoreditch heirloom wolf humblebrag.', :breed => 'American Shorthair'})
    put '/cats/1', params: {:description => 'Very energetic and loving, he enjoys catnip and taking long naps'}
  end

  it 'returns the updated description' do
    expect(JSON.parse(response.body)['message']).to eq('This cat has been updated successfully!')
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(200)
  end
end