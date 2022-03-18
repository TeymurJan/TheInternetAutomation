#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Hovers', type: :feature do
  before do
    @hovers_page = HoversPage.new
    @hovers_page.load
  end

  it 'Check hovers' do
    page.first(:xpath, '//div//div//img').hover
    expect(page).to have_content('name: user1')

    page.find(:xpath, '//div//div[2]//img').hover
    expect(page).to have_content('name: user2')

    page.find(:xpath, '//div//div[3]//img').hover
    expect(page).to have_content('name: user3')
  end
end