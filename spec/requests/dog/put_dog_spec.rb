require 'rails_helper'

describe "Put a dog route", :type => :request do
  
  before do
    @dog = Dog.create({:id => 1 , :name => 'Rex', :age => 4, :description => 'Vinyl gastropub banjo fixie wayfarers.', :breed => 'Bluetick'})
    put '/dogs/1', params: {:description => 'Very energetic and loving, he enjoys going on walks and playing fetch'}
  end

  it 'returns the updated description' do
    expect(JSON.parse(response.body)['message']).to eq('This dog has been updated successfully!')
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(200)
  end
end