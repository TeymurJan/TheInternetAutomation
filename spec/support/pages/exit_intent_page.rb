#frozen_string_literal: true

require 'site_prism'

class ExitIntent < SitePrism::Page
  set_url '/exit_intent'
  element :modal, '#ouibounce-modal'
end