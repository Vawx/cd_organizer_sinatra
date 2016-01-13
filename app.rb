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
  @cd_title = params[:cd]
  @cd_artist = params[:artist]
  cd = CD.new(@cd_title, @cd_artist)
  Catalog.add_cd( cd )
  @cd_list = Catalog.get_cds
  erb :index
end

get '/artist_page/:artist' do
  @artist = params[:artist]
  @artist_cds = Catalog.get_cds_by_artist(@artist)

  erb :artist_page
end
