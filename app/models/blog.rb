# frozen_string_literal: true

class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body
  validates :title, length: { in: 4..25 }
  belongs_to :topic
  belongs_to :author, class_name: 'User'
  validates :title, :body, presence: true

  def self.most_recent
    Blog.order(created_at: :asc)
  end
end
