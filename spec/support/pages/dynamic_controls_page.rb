#frozen_string_literal: true

require 'site_prism'

class DynamicControls < SitePrism::Page
  set_url '/dynamic_controls'
  element :button_removeoradd, :xpath, '//form[@id="checkbox-example"]//button[@type="button"]'
  element :button_enableordisable, :xpath, '//form[@id="input-example"]//button[@type="button"]'
  element :checkbox_a, 'input[type="checkbox"]'
  element :input, 'input[type="text"]'
  element :loading_img, 'img[src="/img/ajax-loader.gif"]'

  def clickRemoveOrAdd; button_removeoradd.click end
  def clickEnableOrDisable; button_enableordisable.click end
end