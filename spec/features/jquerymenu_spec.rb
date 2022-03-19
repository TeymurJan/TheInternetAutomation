#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'JQueryUI - Menu: ', type: :feature do
  it 'check back to jquery UI option' do
    visit '/jqueryui/menu#'
    page.find('#menu').select('Back to JQuery UI'.to_s)
    expect(page.current_path).to eq('/jqueryui')
  end
end