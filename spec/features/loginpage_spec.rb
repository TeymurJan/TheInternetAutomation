#frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Login page: ', type: :feature do
  before do
    @login_page = LoginPage.new
    @login_page.load
  end

  it 'check authorization form' do
    @login_page.loginForm('tomsmith', 'SuperSecretPassword!')
    expect(@login_page).to have_content('You logged into a secure area!')
  end

  it 'check logout' do
    @login_page.loginForm('tomsmith', 'SuperSecretPassword!')
    @login_page.clickSignOutBtn
    expect(@login_page).to have_content('You logged out of the secure area!')
  end

  it 'check wrong password' do
    @login_page.loginForm('tomsmith', '1234')
    expect(@login_page).to have_content('Your password is invalid!')
  end

  it 'check wrong username' do
    @login_page.loginForm('12312', 'SuperSecretPassword!')
    expect(@login_page).to have_content('Your username is invalid')
    #So system assumes that having correct password, but wrong username is ok...right, cool
  end
end
