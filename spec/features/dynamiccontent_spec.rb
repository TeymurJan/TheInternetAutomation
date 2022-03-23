#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Dynamic Content page: ', type: :feature do
  before do 
    @dynamic_content_page = DynamicContent.new
    @dynamic_content_page.load
  end

  it 'check amount of divs' do
    expect(@dynamic_content_page.getDivsCount). to eq(9)
  end

  it 'check dynamic comments' do
    text = @dynamic_content_page.getDivText
    visit current_path
    expect(page).not_to have_text(text)
  end
end
