#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Notification message: ', type: :feature do
  it 'check rendered message' do
    page.find('a[href="/notification_message"]').click
    expect(page).to have_content('Action successful').or have_content('Action unsuccessful, please try again')
  end
end