#frozen_string_literal: true

require 'site_prism'

class EntryAd < SitePrism::Page
  set_url '/entry_ad'
  element :button_close, :xpath, '//div[@class="modal-footer"]//p'
  element :ad, :xpath, '//div[@class="modal"]'

  def clickCloseButton; button_close.click end
end 
