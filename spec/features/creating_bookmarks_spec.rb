feature 'create a new bookmark' do
  scenario 'user adds a new bookmark' do
    visit('bookmarks')
    fill_in 'title', with: 'Facebook'
    fill_in 'url', with: 'https://facebook.com'
    click_button 'Add'
    visit('/bookmarks')
    expect(page).to have_content('Facebook')
  end
end
