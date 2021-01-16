class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body
  validates :title, length: { in: 4..100 }
  belongs_to :topic
  has_rich_text :content
  belongs_to :author, class_name: 'User'
  validates :title, :body, presence: true

  def self.most_recent
    Blog.order(created_at: :asc)
  end
end
