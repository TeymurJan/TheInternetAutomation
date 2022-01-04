#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Digest auth check', type: :feature do
  
  it 'auth check' do
    visit '/digest_auth'
    page.driver.browser.switch_to.alert.send_keys('admin' + '\t' + 'admin')
    page.driver.browser.switch_to.alert.accept
  end
end