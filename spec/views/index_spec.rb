require 'spec_helper'

describe 'Index View' do
  it 'should display the search form' do
    get '/'
    expect(last_response.body).to include('Search for Public GitHub Repos')
  end
end
