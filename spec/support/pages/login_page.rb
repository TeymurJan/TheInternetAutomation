#frozen_string_literal: true

require 'site_prism'

class LoginPage < SitePrism::Page
  set_url '/login'
  element :username_field, '#username'
  element :password_field, '#password'
  element :login_button, '.fa-sign-in'
  element :signout_button, '.icon-signout'

  def inputUsernameField(str) username_field.set(str) end
  def inputPasswordField(str) password_field.set(str) end
  def clickLoginBtn; login_button.click end
  def clickSignOutBtn; signout_button.click end

  def loginForm(login, pass)
    inputUsernameField(login)
    inputPasswordField(pass)
    clickLoginBtn
  end
end
