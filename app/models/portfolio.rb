class Portfolio < ApplicationRecord
  # include Placeholder
  has_many :technologies
  validates :title, :body, presence: true
  validates :title, length: { in: 5..25 }

  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  #   def self.angular
  # where(subtitle: 'Angular')
  #   end

  # mount_uploader :thumb_image, PortfolioUploader
  # mount_uploader :main_image, PortfolioUploader

  def self.by_position
    order('position ASC')
  end

  scope :angular, -> { where(subtitle: 'Angular') }

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  scope :service, -> { where(subtitle: 'My Great Service') }

  # after_initialize :set_defaults
  #
  # def set_defaults
  # self.main_image ||= Placeholder.image_genertor(height: '600', width: '400')
  # self.thumb_image ||= Placeholder.image_genertor(height: '350', width: '200')
  # end
end
