# As a user,
# so that I can access websites I marked
# I would like to see a list of bookmarks
require './app.rb'

feature 'Viewing bookmarks' do

   scenario 'user can view a list of bookmarks' do
     connection = PG.connect(dbname: 'bookmark_manager_test')
     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.facebook.com');")
     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.blog.pl');")
     visit '/bookmarks'
     expect(page).to have_content 'http://www.facebook.com'
     expect(page).to have_content 'http://www.blog.pl'
     expect(page).to have_content 'http://www.makersacademy.com'
   end
end
