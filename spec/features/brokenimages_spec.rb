#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Broken images page', type: :feature do
  before do
    @brokenimages_page = BrokenImages.new
    @brokenimages_page.load
  end

  it 'Check for two broken images' do
    visit @brokenimages_page.image_first[:src]
    expect(page).to have_content('Not Found')
    @brokenimages_page.load
    visit @brokenimages_page.image_second[:src]
    expect(page).to have_content('Not Found')
  end
end