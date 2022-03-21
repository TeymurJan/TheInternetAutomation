#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Key presses: ', type: :feature do
  it 'check keypresses' do
    visit '/key_presses'
    page.find('#target').send_keys(:space)
    expect(page).to have_content('You entered: SPACE')
    page.find('#target').send_keys(:backspace)
    expect(page).to have_content('You entered: BACK_SPACE')
    page.find('#target').send_keys(:control)
    expect(page).to have_content('You entered: CONTROL')
    page.find('#target').send_keys(:escape)
    expect(page).to have_content('You entered: ESCAPE')
    page.find('#target').send_keys(:f1)
    expect(page).to have_content('You entered: F1')
  end
end