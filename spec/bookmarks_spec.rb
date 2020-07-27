require "bookmark"

describe Bookmark do
  subject(:bookmark) { described_class.new }
  it "can return a list of bookmarks" do
    bookmark
    expect(Bookmark.all).to eq [:bookmark_1, :bookmark_2, :bookmark_3]
  end
end