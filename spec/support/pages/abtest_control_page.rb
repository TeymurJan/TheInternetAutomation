#frozen_string_literal: true

require 'site_prism'

class ABTestPage < SitePrism::Page
  set_url '/abtest'
  element :header_abtest, :xpath, '//div//h3'
  element :text_abtest, :xpath, '//div//p'

  def textHeaderABTest; header_abtest.text end
  def textABTest; text_abtest.text end
end
