#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Large & Deep DOM: ', type: :feature do
  before do
    visit '/large'
  end

  it 'check deep DOM and Table position' do
    expect(page.find('#sibling-12\.2').text).to eq('12.2')
    expect(page.find('tr.row-14 > td.column-25').text).to eq('14.25')
  end
end
