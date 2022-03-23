#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Check context menu: ', type: :feature do
  before do 
    @context_menu_page = ContextMenu.new
    @context_menu_page.load
  end

  it 'javascript alert' do
    page.execute_script('displayMessage();')
    alert = page.driver.browser.switch_to.alert.text
    expect(alert).to eq('You selected a context menu')
  end
end
