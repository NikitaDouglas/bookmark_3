# feature 'Viewing bookmarks' do
#   feature 'visiting the homepage' do
#     scenario 'visit the index page' do
#     visit('/')
#     expect(page).to have_content "Bookmark Manager"
#   end
#  end
# end

feature 'Test bookmark route' do
  scenario 'Visit bookmarkroute' do
    visit('/bookmarks')
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
 end
end


# Write a failing feature test for viewing bookmarks
# at the /bookmarks route.
