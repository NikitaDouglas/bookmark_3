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
      url = params[:url]
      title = params[:title]
      Bookmark.create(title, url)
      redirect('/bookmark_added')
    end

    get '/bookmark_added' do
      'Successfully added!'
    end

    get '/bookmarks/delete' do
      erb :bookmark_delete
    end

    post '/bookmarks/delete' do
      Bookmark.delete(params[:title])
      redirect('/bookmarks')
    end

    run! if app_file == $0

end
