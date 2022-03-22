#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Horizontal slider: ', type: :feature do
  it 'check horizontal slider' do
    visit '/horizontal_slider'
    page.find('input[type="range"]').set(5)
    expect(page).to have_content('5')
  end
end