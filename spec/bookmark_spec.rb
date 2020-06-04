require './lib/bookmark.rb'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do

      Bookmark.create('http://www.makersacademy.com')
      Bookmark.create('http://www.destroyallsoftware.com')
      Bookmark.create('http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create(url)' do
    it 'add a bookmark to the db' do

      Bookmark.create('http://facebook.com')

      expect(Bookmark.all).to include('http://facebook.com')
    end
  end
end
