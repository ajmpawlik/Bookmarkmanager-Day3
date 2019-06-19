require 'bookmark'

describe Bookmark do
  describe "all" do
    it'should return an array of bookmarks' do
      expect(Bookmark.all).to eq ['www.google.com', 'www.bbc.com']
    end
  end
end
