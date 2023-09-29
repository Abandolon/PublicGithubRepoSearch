# config.ru
require './app'

run Sinatra::Application do |config|
  set :port, 4567
end
