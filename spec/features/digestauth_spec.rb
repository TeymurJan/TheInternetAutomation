#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Digest auth check: ', type: :feature do
  before do
    @home_page = HomePage.new
    @home_page.load
  end

  it 'Check successful auth' do
    username = GlobalConstants::NAME
    password = GlobalConstants::PASSWORD

    url = page.current_url.gsub!('https://', '')
    visit "https://#{username}:#{password}@#{url}digest_auth"
    expect(page).to have_text('Congratulations! You must have the proper credentials.')
  end
end
