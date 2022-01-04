#frozen_string_literal: true

require 'site_prism'

class BrokenImages < SitePrism::Page
  set_url '/broken_images'
  elements :images, :xpath, '//div[@class="example"]//img'

  def getImage; images end
  def getImagesCount; images.count end
end