require 'rails_helper'

describe "post a review route", :type => :request do 

  before do 
    post '/dogs', params: {:name => 'Jimmy', :age => 3, :description => 'Very energetic and loving, he enjoys going on walks and playing fetch', :breed => 'Husky'} 
  end

  it 'returns the dogs name ' do
    expect(JSON.parse(response.body)['name']).to eq('Jimmy')
  end

  it 'returns the dogs age' do
    expect(JSON.parse(response.body)['age']).to eq('3')
  end

  it 'returns the dogs description' do
    expect(JSON.parse(response.body)['description']).to eq('Very energetic and loving, he enjoys going on walks and playing fetch')
  end

  it 'returns the dogs breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Husky')
  end
end