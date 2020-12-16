# frozen_string_literal: true

module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title = 'DevkcMainPage'
  end
end
