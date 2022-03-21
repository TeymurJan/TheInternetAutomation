#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'JQueryUI - Menu: ', type: :feature do
  it 'check back to jquery UI option' do
    visit '/jqueryui/menu#'
    page.find(:xpath, '(//a[@href="#"])[3]').hover
    page.find('a[href="/jqueryui"]').click
    expect(page).to have_current_path('/jqueryui')
  end
end