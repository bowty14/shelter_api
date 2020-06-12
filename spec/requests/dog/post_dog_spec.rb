require 'rails_helper'

describe "post a review route", :type => :request do 

  before do 
    post '/dogs', params: {:name => 'Jimmy', :age => 3, :description => 'Very energetic and loving, he enjoys going on walks and playing fetch', :breed => 'Husky'} 
  end

  it 'returns the dogs name ' do
    expect(JSON.parse(response.body)['name']).to eq('Jimmy')
  end

end