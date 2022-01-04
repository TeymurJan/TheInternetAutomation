#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'A/B Test Control page', type: :feature do
  before do
    @abtestcontrol_page = ABTestPage.new
    @abtestcontrol_page.load
  end
  
  it 'Check header and paragraph text' do
    expect(@abtestcontrol_page.textHeaderABTest).to eq('A/B Test Control')
    expect(@abtestcontrol_page.textABTest).to eq('Also known as split testing. This is a way in which businesses are 
      able to simultaneously test and learn different versions of a page to see which text and/or functionality works 
      best towards a desired outcome (e.g. a user action such as a click-through).')
  end
  
end