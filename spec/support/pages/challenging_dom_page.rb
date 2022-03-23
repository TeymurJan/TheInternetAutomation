#frozen_string_literal: true

require 'site_prism'

class ChallengingDOM < SitePrism::Page
  set_url 'challenging_dom'
  element :button_blue, 'a.button', match: :first
  element :button_red, 'a.button.alert'
  element :button_green, 'a.button.success'
end 
