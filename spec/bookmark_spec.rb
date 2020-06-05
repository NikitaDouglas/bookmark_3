require './lib/bookmark.rb'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do

      Bookmark.create('Makers website', 'http://www.makersacademy.com')
      Bookmark.create('Destroyal', 'http://www.destroyallsoftware.com')
      Bookmark.create('Google', 'http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include({:title=>"Makers website", :url=>"http://www.makersacademy.com"})
      expect(bookmarks).to include({:title=>"Destroyal", :url=>"http://www.destroyallsoftware.com"})
      expect(bookmarks).to include({:title=>"Google", :url=>"http://www.google.com"})
    end
  end

  describe '.create(title,url)' do
    it 'add a bookmark to the db' do

      Bookmark.create('Facebook', 'http://facebook.com')

      expect(Bookmark.all).to include({:title=>"Facebook", :url=>"http://facebook.com"})
    end
  end

  describe '.delete(title)' do
    it 'removes a bookmark from the db' do

      Bookmark.create('Facebook', 'http://facebook.com')
      Bookmark.create('Destroyal', 'http://www.destroyallsoftware.com')
      Bookmark.create('Google', 'http://www.google.com')

      Bookmark.delete('Facebook')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq(2)
      expect(bookmarks.first[:title]).not_to eq('Facebook')
    end
  end
end
