module PortfoliosHelper
  # def image_genertor(height:, width:)
  # "https://via.placeholder.com/#{height}x#{width}"

  # end
  #
  # def portfolio_imgimg, type)
  # if img.model.main_image? || img.model.thumb_image?
  # img
  # elsif type == 'thumb'
  # image_genertor(height: '350', width: '200')
  # elsif type == 'main'
  # image_genertor(height: '600', width: '400')
  # end
  # end
  # portfolio_item = @portfolios_items
  # render partial: 'portfolio_item', collection: @portfolios_items
  def check_img(port)
    @img = if port.portfolio_image.present?
             port.portfolio_image
           elsif port.main_image.present?
             port.main_image
           end
  end
end
