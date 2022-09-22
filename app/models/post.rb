class Post < ApplicationRecord
  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags

  def self.post_titles
    Post.all.map do |post|
      post.title
    end
  end
end
