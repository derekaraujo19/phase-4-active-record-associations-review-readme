class Author < ApplicationRecord
  has_many :posts

  def post_titles
    self.posts.map do |post|
      post.title
    end
  end


end
