#frozen_string_literal: true

require 'site_prism'

class BrokenImages < SitePrism::Page
  set_url '/broken_images'
  element :image_first, 'img[src="asdf.jpg"]'
  element :image_second, 'img[src="hjkl.jpg"]'
  element :image_third, 'img[src="img/avatar-blank.jpg"]'
end
