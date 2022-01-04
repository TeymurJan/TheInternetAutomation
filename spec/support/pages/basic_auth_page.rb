#frozen_string_literal: true

require 'site_prism'

class BasicAuthPage < SitePrism::Page
  set_url '/basic_auth'
  element :successful_authorization, :xpath, '//div//p'

  def textSuccesfulAuth; successful_authorization.text end
end