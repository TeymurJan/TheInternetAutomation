#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Dynamic Controls page', type: :feature do
  before do
    @dynamic_controls_page = DynamicControls.new
    @dynamic_controls_page.load
  end

  it 'Check disabled checkbox' do
    @dynamic_controls_page.clickRemoveOrAdd
    expect(@dynamic_controls_page).not_to have_checkbox_a
  end

  it 'Check enabled checkbox' do
    @dynamic_controls_page.clickRemoveOrAdd
    @dynamic_controls_page.wait_until_loading_img_invisible
    @dynamic_controls_page.clickRemoveOrAdd
    expect(@dynamic_controls_page).to have_checkbox_a
  end

  it 'Check disabled input' do
    expect(@dynamic_controls_page.input).to be_disabled
  end

  it 'Check enabled input' do
    @dynamic_controls_page.clickEnableOrDisable
    @dynamic_controls_page.wait_until_loading_img_invisible
    expect(@dynamic_controls_page.input).not_to be_disabled
  end
end