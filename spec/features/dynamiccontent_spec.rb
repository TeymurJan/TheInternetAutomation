#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Dynamic Content page', type: :feature do
  before do 
    @dynamic_content_page = DynamicContent.new
    @dynamic_content_page.load
  end

  it 'Check amount of divs' do
    expect(@dynamic_content_page.getDivsCount). to eq(9)
  end
end