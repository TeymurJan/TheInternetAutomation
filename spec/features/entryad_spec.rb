#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Entry ad page', type: :feature do
  before do
    @entry_ad_page = EntryAd.new
    @entry_ad_page.load
  end

  it 'Check for ad' do
    expect(@entry_ad_page).to have_ad
    @entry_ad_page.clickCloseButton
    expect(@entry_ad_page).not_to have_ad
  end
end