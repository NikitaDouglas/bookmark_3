require 'pg'

feature 'deleting bookmark' do
  scenario 'allows a user to delete a bookmark' do

    connection  = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.facebook.com', 'Facebook');")


    visit '/bookmark/delete'
    fill_in 'title', with: 'Facebook'
    click_button 'Delete'
    expect(page).to_not have_content('Facebook')
  end
end
