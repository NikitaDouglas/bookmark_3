require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
      'Bookmark Manager'
    end

    get '/bookmarks' do
      @bookmarks = Bookmark.all
      erb :bookmark
    end

    post '/adds_bookmark' do
      redirect('/bookmark_added')
    end

    get '/bookmark_added' do
      'Successfully added!'
    end

    run! if app_file == $0

end
