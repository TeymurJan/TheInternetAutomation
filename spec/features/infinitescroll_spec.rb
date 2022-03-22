#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Infinite scroll: ', type: :feature do
  it 'check added divs' do
    visit '/infinite_scroll'
    page.execute_script('window.scrollTo(0, 1980)')
    expect(page).not_to have_selector('.jscroll-added', count: 2)
  end
end