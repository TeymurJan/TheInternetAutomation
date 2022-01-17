#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Exit intent page', type: :feature do
  before do
    @exit_intent_page = ExitIntent.new
    @exit_intent_page.load
  end

  it 'Check viewport leaving' do
    x = 40, y = 0
    until @exit_intent_page.has_modal?
      page.driver.actions.move_to_location(x, y).perform
      y += 100
    end
    expect(@exit_intent_page).to have_modal
  end
end