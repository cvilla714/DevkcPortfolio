# frozen_string_literal: true

class Topic < ApplicationRecord
  has_many :blogs
  validates :title, presence: true

  def most_recent_blog
    if blogs.most_recent.nil?
      arr = []
      arr.push(Blog.new)
    else
      blogs.most_recent.limit(1)
    end
  end
end
