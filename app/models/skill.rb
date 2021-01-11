class Skill < ApplicationRecord
  validates :title, :percent_utilized, presence: true
  validates :title, length: { in: 4..25 }

  # after_initialize :set_defaults
  #
  # def set_defaults
  # self.bade ||= 'https://via.placeholder.com/400.png/09f/fff%20C/O%20https://placeholder.com/'
  # self.thumb_image ||= 'https://via.placeholder.com/200.png/09f/fff%20C/O%20https://placeholder.com/'
  # end
end
