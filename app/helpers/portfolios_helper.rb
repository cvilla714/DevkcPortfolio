module PortfoliosHelper
  def image_genertor(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_genertor(height: '350', width: '200')
    elsif type == 'main'
      image_genertor(height: '600', width: '400')
    end
  end
end
