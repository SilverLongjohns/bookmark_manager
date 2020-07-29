feature 'can view bookmarks' do
  scenario 'displays a list of bookmarks at the /bookmarks directory' do
    visit('/')
    click_button("View Bookmarks")
    expect(page).to have_content("bookmark_1")
  end
end