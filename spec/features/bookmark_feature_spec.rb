feature 'can view bookmarks' do
  scenario 'displays a list of bookmarks at the /bookmarks directory' do
    
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
    visit('/')
    click_button("View Bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
  end
end