class Bookmark
  attr_reader :list

  def initialize(url)
    @list = [:bookmark_1, :bookmark_2, :bookmark_3]
    @url = url
  end

  def url
    @url
  end

  def self.create(url)
    @bookmark = Bookmark.new(url)
    @list << @bookmark
  end

  def self.instance
    @bookmark
  end

  def self.all
    @list
  end

end