require 'rails_helper'

describe "post a review route", :type => :request do 

  before do 
    post '/cats', params: {:name => 'James', :age => 3, :description => 'Very energetic and loving, he enjoys catnip and take long naps', :breed => 'Oregon Rex'} 
  end

  it 'returns the cats name ' do
    expect(JSON.parse(response.body)['name']).to eq('James')
  end

  it 'returns the cats age' do
    expect(JSON.parse(response.body)['age']).to eq(3)
  end

  it 'returns the cats description' do
    expect(JSON.parse(response.body)['description']).to eq('Very energetic and loving, he enjoys catnip and take long naps')
  end

  it 'returns the dogs breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Oregon Rex')
  end

  describe "Receice exception on Post dog route", :type => :request do
    
    before do
      post '/cats', params: {:name => 'James', :age => 3, :breed => 'Oregon Rex'}  
    end

    it 'returns a 422 status' do
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end