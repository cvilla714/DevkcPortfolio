class Portfolio < ApplicationRecord
  has_many :technologies
  validates :title, :body, :main_image, :thumb_image, presence: true
  validates :title, length: { in: 5..25 }

  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  #   def self.angular
  # where(subtitle: 'Angular')
  #   end

  scope :angular, -> { where(subtitle: 'Angular') }

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  scope :service, -> { where(subtitle: 'My Great Service') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'https://via.placeholder.com/400.png/09f/fff%20C/O%20https://placeholder.com/'
    self.thumb_image ||= 'https://via.placeholder.com/200.png/09f/fff%20C/O%20https://placeholder.com/'
  end
end
