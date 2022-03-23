#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Challenging DOM page: ', type: :feature do
  before do
    @checkboxes_page = CheckBoxes.new
    @checkboxes_page.load
  end

  it 'check checkboxes' do 
    expect(@checkboxes_page.checkbox_checked).to be_checked
    expect(@checkboxes_page.checkbox_unchecked).not_to be_checked
  end
end
