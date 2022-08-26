#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Notification message: ', type: :feature do
  it 'check rendered message' do
    visit '/notification_message_rendered'
    page.find('a[href="/notification_message"]').click
    expect(page.find('#flash').text).to start_with('Action successful').or start_with('Action unsuccesful, please try again')
  end
end
