#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Dynamic Loading page', type: :feature do
  before do
    @dynamic_loading_page = DynamicLoading.new
    @dynamic_loading_page.load
  end

  it 'check first example' do 
    @dynamic_loading_page.goToFirstExample
    @dynamic_loading_page.clickButton
    @dynamic_loading_page.wait_until_loading_img_invisible
    expect(@dynamic_loading_page.getText).to eq('Hello World!')
  end

  it 'check second example' do
    @dynamic_loading_page.goToSecondExample
    @dynamic_loading_page.clickButton
    @dynamic_loading_page.wait_until_loading_img_invisible
    expect(@dynamic_loading_page.getText).to eq('Hello World!')
  end
end
