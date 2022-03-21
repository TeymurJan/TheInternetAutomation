#frozen_string_literal: true

require 'site_prism'

class JSAlertPage < SitePrism::Page
  set_url '/javascript_alerts'
  element :jsalert_button, 'button[onclick="jsAlert()"]'
  element :jsconfirm_button, 'button[onclick="jsConfirm()"]'
  element :jsprompt_button, 'button[onclick="jsPrompt()"]'
  element :result_text, '#result'

  def clickAlertBtn; jsalert_button.click end
  def clickConfirmBtn; jsconfirm_button.click end
  def clickPromptBtn; jsprompt_button.click end
  def getResultText; result_text.text end
end