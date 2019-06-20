require 'bookmark'

describe Bookmark do
  describe ".all" do
    it'should return a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.facebook.com')
    end
  end
end
