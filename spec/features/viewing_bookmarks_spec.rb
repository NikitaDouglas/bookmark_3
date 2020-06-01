feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'visit the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
end
