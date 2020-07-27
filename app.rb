require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/bookmarks' do
    "Bookmark 1"
  end

  run! if app_file == $0
end
