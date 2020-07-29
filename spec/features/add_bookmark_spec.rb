feature "can add bookmarks" do
  scenario "user can add bookmarks" do
    visit ('/')
    click_button('Add Bookmark')
    page.fill_in 'url', with: 'http://www.google.com'
    click_button('Confirm')
    click_button('View Bookmarks')
    expect(page).to have_content("http://www.google.com")
  end
end