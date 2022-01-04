#frozen_string_literal: true

require 'site_prism'

class ContextMenu < SitePrism::Page
  set_url '/context_menu'
  element :div_context_menu, '#hot-spot'

  def clickOnHotSpot; div_context_menu.right_click end
end