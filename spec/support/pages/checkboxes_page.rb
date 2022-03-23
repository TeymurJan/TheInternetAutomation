#frozen_string_literal: true

require 'site_prism'

class CheckBoxes < SitePrism::Page
  set_url '/checkboxes'
  element :checkbox_checked, 'input[type="checkbox"]:checked'
  element :checkbox_unchecked, 'input[type="checkbox"]', match: :first
end 
