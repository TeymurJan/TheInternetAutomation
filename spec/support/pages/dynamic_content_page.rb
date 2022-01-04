#frozen_string_literal: true

require 'site_prism'

class DynamicContent < SitePrism::Page
  set_url '/dynamic_content'
  elements :divs, :xpath, '//div[@id="content" and @class="large-10 columns large-centered"]//div'

  def getDivsCount; divs.count end
end