require 'pg'

feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end
end

feature 'Test bookmark route' do
  scenario 'Displays the list of bookmarks from the db' do
    connection  = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.makersacademy.com', 'Makers website');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy All');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")

    visit'/bookmarks'
      expect(page).to have_content "Makers website"
      expect(page).to have_content "Destroy All"
      expect(page).to have_content "Google"
 end
end


# Write a failing feature test for viewing bookmarks
# at the /bookmarks route.
