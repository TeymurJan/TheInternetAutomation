#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Dropdown menu check', type: :feature do
  before do
    @dropdown_page = DropDownMenu.new
    @dropdown_page.load
  end

  it 'select option' do
    @dropdown_page.selectOption('Option 1')
    expect(@dropdown_page).to have_select('dropdown', selected: 'Option 1')
  end
end