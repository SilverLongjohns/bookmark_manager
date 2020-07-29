require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmark)
  end

  get '/add_bookmark' do
    erb(:add_bookmark)
  end

  post '/save' do
    Bookmark.create(url: params[:url])
    redirect '/'
  end
  run! if app_file == $0
end
