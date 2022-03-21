#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Opening multiple windows: ', type: :feature do
  it 'check new window' do
    visit '/windows'
    page.find('a[href="/windows/new"]').click
    window = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(window)
    expect(page).to have_content('New Window')
  end
end