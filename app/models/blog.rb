class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body
  validates :title, length: { in: 4..25 }
  validates :title, uniqueness: true
  belongs_to :topic
  belongs_to :author, class_name: 'User'
  validates :title, :body, presence: true
end
