#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'JavaScript alerts: ', type: :feature do
  before do
    @jsalert_page = JSAlertPage.new
    @jsalert_page.load
  end

  it 'check JS alert' do
    @jsalert_page.clickAlertBtn
    alert_text = page.driver.browser.switch_to.alert.text
    expect(alert_text).to eq('I am a JS Alert')
  end

  it 'check JS confirm accept button' do
    @jsalert_page.clickConfirmBtn
    page.driver.browser.switch_to.alert.accept
    expect(@jsalert_page.getResultText).to eq('You clicked: Ok')
  end

  it 'check JS confirm cancel button' do
    @jsalert_page.clickConfirmBtn
    page.driver.browser.switch_to.alert.dismiss
    expect(@jsalert_page.getResultText).to eq('You clicked: Cancel')
  end

  it 'check JS prompt text' do
    @jsalert_page.clickPromptBtn
    prompt = page.driver.browser.switch_to.alert
    prompt.send_keys('Test Text')
    prompt.accept
    expect(@jsalert_page.getResultText).to eq('You entered: Test Text')
  end
end
