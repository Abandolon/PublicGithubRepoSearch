describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  before do
    stub_request(:get, /api.github.com/).
      to_return(body: '{"items": []}', headers: { 'Content-Type' => 'application/json' })
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Search for Public GitHub Repos')
  end

  it "should load the repos page" do
    get '/repos', { keyword: 'ruby' }
    expect(last_response).to be_ok
    expect(last_response.body).to include('Repositories')
  end

  it 'should search for ruby repositories by default' do
    get '/repos'
    expect(last_response.body).to include('ruby')
  end

  it 'should handle non-existent pages gracefully' do
    get '/non-existent-page'
    expect(last_response.status).to eq(404)
  end

  it 'should handle GitHub API errors gracefully' do
    stub_request(:get, /api.github.com/).to_return(status: 500)
    get '/repos', { keyword: 'ruby' }
    expect(last_response.body).to include('An error occurred')
  end
end
