class Author
  attr_accessor :name

  @@all = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@all += 1
    post.author = self
  end

  def add_song_by_name(title)
    post = Post.new(title)
    @posts << post
    @@all += 1
    post.author = self
  end

  def self.post_count
    @@all
  end

end
