require 'sinatra'
require 'octokit'
require 'logger'

get '/' do
  erb :index
end

get '/repos' do
  logger = Logger.new(STDOUT)
  keyword = params['keyword'] || 'ruby' # Default to 'ruby' if no keyword is provided
  page = [params['page'].to_i, 1].max

  search_response = Octokit::Client.new.search_repositories(keyword, page: page)
  @repos = search_response[:items]
  @total_count = search_response[:total_count]

  @current_page = page
  @next_page = page + 1
  @prev_page = page - 1 if page > 1

  logger.info("Search Repositories Response: #{@repos}")

  erb :repos
end
