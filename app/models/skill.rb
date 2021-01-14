class Skill < ApplicationRecord
  # include Placeholder
  validates :title, :percent_utilized, presence: true
  validates :title, length: { in: 4..25 }

  # after_initialize :set_defaults

  # def set_defaults
  # self.badge ||= Placeholder.image_genertor(height:'250',width:'250')
  # self.badge ||= 'https://via.placeholder.com/250x250'
  # end
end
