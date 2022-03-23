#frozen_string_literal: true

require 'site_prism'

class DynamicContent < SitePrism::Page
  set_url '/dynamic_content'
  elements :divs, :xpath, '//div[@id="content" and @class="large-10 columns large-centered"]//div'
  element :div_with_text, :xpath, '//div[@class="row"]//div[@class="large-10 columns"]', match: :first

  def getDivText; div_with_text.text end
  def getDivsCount; divs.count end
end
