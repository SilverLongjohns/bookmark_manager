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

  run! if app_file == $0
end
