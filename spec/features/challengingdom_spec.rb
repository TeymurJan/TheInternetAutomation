#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Challenging DOM page', type: :feature do
  before do
    @challenging_dom_page = ChallengingDOM.new
    @challenging_dom_page.load
  end

  it 'buttons are displayed' do
    expect(@challenging_dom_page).to have_button_blue
    expect(@challenging_dom_page).to have_button_red
    expect(@challenging_dom_page).to have_button_green
  end
end