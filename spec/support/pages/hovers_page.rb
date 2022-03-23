#frozen_string_literal: true

require 'site_prism'

class HoversPage < SitePrism::Page
  set_url '/hovers'
  elements :images, :xpath, '//div//div//img'

  def getImages; images.each {|img| return yield(img)} end
  def getCountImages; images.count end
end
