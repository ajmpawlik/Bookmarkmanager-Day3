require 'sinatra/base'
require 'bookmark'


class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @array_of_bookmarks = Bookmark.all
    erb :view_bookmarks
  end
  run! if app_file == $0
end
