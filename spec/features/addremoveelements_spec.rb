#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Add&Remove elements page: ', type: :feature do
  before do
    @add_remove_elements_page = AddRemoveElements.new
    @add_remove_elements_page.load
  end

  it 'add element' do
    @add_remove_elements_page.clickAdd
    expect(@add_remove_elements_page).to have_delete_buttons
  end

  it 'delete element' do
    random = Random.new
    counter = random.rand(30)
    for i in 0..counter do
      @add_remove_elements_page.clickAdd
    end
    for i in 0..counter do
      @add_remove_elements_page.getDeleteButton{|btn| btn.click}
    end

    expect(@add_remove_elements_page).not_to have_delete_buttons
  end
end
