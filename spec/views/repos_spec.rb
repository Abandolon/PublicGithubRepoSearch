require 'spec_helper'

describe 'Repos View' do
  before do
    stub_request(:get, /api.github.com/).
      to_return(body: '{"items": []}', headers: { 'Content-Type' => 'application/json' })
  end

  it 'should display repositories for a specific keyword' do
    get '/repos', { keyword: 'ruby' }
    expect(last_response.body).to include('ruby')
  end
end
