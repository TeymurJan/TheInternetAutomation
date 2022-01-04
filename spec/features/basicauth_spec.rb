#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Basic Auth page', type: :feature do
  before do
    @basic_auth_page = BasicAuthPage.new
    @home_page = HomePage.new
  end

  it 'Check successful auth' do
    username = GlobalConstants::NAME
    password = GlobalConstants::PASSWORD

    @home_page.load
    url = page.current_url.gsub!('https://', '')
    visit "https://#{username}:#{password}@#{url}basic_auth"
    expect(@basic_auth_page.textSuccesfulAuth).to eq('Congratulations! You must have the proper credentials.')
  end
end