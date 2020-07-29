require "bookmark"

describe Bookmark do
  subject(:bookmark) { described_class.new }
  it "can return a list of bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.all
    expect(bookmarks).to include 'http://www.makersacademy.com'
    expect(bookmarks).to include 'http://www.google.com'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
  end

  it "can create a new bookmark" do
    Bookmark.create(url: 'http://www.testbook.com')

    expect(Bookmark.all).to include 'http://www.testbook.com'
  end
end