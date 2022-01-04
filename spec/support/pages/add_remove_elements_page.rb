#frozen_string_literal: true

require 'site_prism'

class AddRemoveElements < SitePrism::Page
  set_url '/add_remove_elements/'
  element :button_add, :xpath, '//button[not(@class="added-manually")]'
  
  elements :delete_buttons, '.added-manually'

  def clickAdd; button_add.click end
  def getDeleteButton; delete_buttons.each {|btn| return yield(btn)} end
end