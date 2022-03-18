#frozen_string_literal: true

require 'site_prism'

class DynamicLoading < SitePrism::Page
  set_url '/dynamic_loading'
  element :first_example, 'a[href="/dynamic_loading/1"]'
  element :second_example, 'a[href="/dynamic_loading/2"]'

  element :button, :xpath, '//div[@id="start"]//button'
  element :text_hello_world, :xpath, '//div[@id="finish"]'
  element :loading_img, 'img[src="/img/ajax-loader.gif"]'

  def goToFirstExample; first_example.click end
  def goToSecondExample; second_example.click end

  def clickButton; button.click end
  def getText; text_hello_world.text end
end