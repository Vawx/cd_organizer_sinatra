require 'sinatra'
require 'sinatra/reloader'
require './lib/catalog'
require './lib/cd'
also_reload("lib/**/*.rb")

get '/' do
  @cd_list = Catalog.get_cds
  erb :index
end

post '/add_artist' do
  @artist_input = params.fetch('artist')
  cd = CD.new(@artist_input)
  Catalog.add_cd( cd )
  @cd_list = Catalog.get_cds
  erb :index
end
