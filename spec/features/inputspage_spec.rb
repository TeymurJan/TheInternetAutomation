#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Inputs page: ', type: :feature do
  before do
    visit '/inputs'
  end

  it 'check input' do
    page.find('input[type="number"]').set('1234567890')
    expect(page.find('input[type="number"]').value).to eq('1234567890')
  end
end