#frozen_string_literal: true

require 'site_prism'

class DropDownMenu < SitePrism::Page
  set_url '/dropdown'
  element :dropdown_menu, '#dropdown'

  def selectOption(option) dropdown_menu.select(option.to_s) end
  def dropDownMenuText; dropdown_menu.text end
end