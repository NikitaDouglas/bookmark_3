feature 'create a new bookmark' do
  scenario 'user adds a new bookmark' do
    visit('bookmarks')
    fill_in 'url', with: 'https://facebook.com'
    click_button 'Add'
    expect(page).to have_content('Successfully added!')
  end
end