require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark-manager')
    bookmarks = connection.exec('SELECT * FROM bookmarks;')
    bookmarks.map { |bookmark| bookmark['url'] }
  end
end
