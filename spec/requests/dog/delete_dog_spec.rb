require 'rails_helper'

describe "delete a dog route", :type => :request do
  
  before do
    @dog = Dog.create({:id => 1 , :name => 'Rex', :age => 4, :description => 'Vinyl gastropub banjo fixie wayfarers.', :breed => 'Bluetick'})
    delete '/dogs/1'
  end

  it 'returns the deleted response' do
    expect(JSON.parse(response.body)['message']).to eq('This dog has been successfully deleted!')
  end

  it 'returns a deleted status' do
    expect(response).to have_http_status(200)
  end
end