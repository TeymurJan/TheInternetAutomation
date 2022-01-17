#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Broken images page', type: :feature do
  before do
    @brokenimages_page = BrokenImages.new
    @brokenimages_page.load
  end

  it 'Check for broken images' do
    @brokenimages_page.getImage.each do |img|
      visit img[:src]
      expect(page).to have_content('Not Found')
      visit '/broken_images'
      sleep 5
    end
  end
end