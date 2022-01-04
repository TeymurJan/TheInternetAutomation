#frozen_string_literal: true

require 'site_prism'

class HomePage < SitePrism::Page
  set_url '/'
  element :link_large, 'a[href="/large"]'
  element :link_typos, 'a[href="/typos"]'
  element :link_frames, 'a[href="/frames"]'
  element :link_hovers, 'a[href="/hovers"]'
  element :link_inputs, 'a[href="/inputs"]'
  element :link_tinymce, 'a[href=/tinymce]'
  element :link_dropdown, 'a[href="/dropdown"]'
  element :link_entry_ad, 'a[href="/entry_ad"]'
  element :link_ab_testing, 'a[href="/abtest"]'
  element :link_shifting_content, 'a[href="/"]'
  element :link_file_upload, 'a[href="/upload"]'
  element :link_slow_resources, 'a[href="/slow"]'
  element :link_shadow_dom, 'a[href="/shadowdom"]'
  element :link_basic_auth, 'a[href="/basic_auth"]'
  element :link_checkboxes, 'a[href="/checkboxes"]'
  element :link_exit_menu, 'a[href="/context_menu"]'
  element :link_file_download, 'a[href="/download"]'
  element :link_digest_auth, 'a[href="/digest_auth"]'
  element :link_geolocation, 'a[href="/geolocation"]'
  element :link_key_presses, 'a[href="/key_presses"]'
  element :link_exit_intent, 'a[href="/exit_intent"]'
  element :link_redirect_link, 'a[href="/redirector"]'
  element :link_multiple_windows, 'a[href="/windows"]'
  element :link_form_authentication, 'a[href="/login"]'
  element :link_status_codes, 'a[href="/status_codes"]'
  element :link_floating_menu, 'a[href="/floating_menu"]'
  element :link_jqueryui_menu, 'a[href="/jqueryui/menu"]'
  element :link_nested_frames, 'a[href="/nested_frames"]'
  element :link_drag_and_drop, 'a[href="/drag_and_drop"]'
  element :link_broken_images, 'a[href="/broken_images"]'
  element :link_sortable_data_tables, 'a[href="/tables"]'
  element :link_challenging_dom, 'a[href="/challenging_dom"]'
  element :link_forgot_password, 'a[href="/forgot_password"]'
  element :link_dynamic_content, 'a[href="/dynamic_content"]'
  element :link_dynamic_loading, 'a[href="/dynamic_loading"]'
  element :link_infinite_scroll, 'a[href="/infinite_scroll"]'
  element :link_javascript_error, 'a[href="/javascript_error"]'
  element :link_dynamic_controls, 'a[href="/dynamic_controls"]'
  element :link_javascript_alerts, 'a[href="/javascript_alerts"]'
  element :link_horizontal_slider, 'a[href="/horizontal_slider"]'
  element :link_secure_file_download, 'a[href="/download_secure"]'
  element :link_add_remove_elements, 'a[href="/add_remove_elements"]'
  element :link_notification_messages, 'a[href="/notification_message"]'
  element :link_disappearing_elements, 'a[href="/disappearing_elements"]'
  
  def goToLarge; link_large.click end
  def goToTypos; link_typos.click end
  def goToFrames; link_frames.click end
  def goToHovers; link_hovers.click end
  def goToTinyMCE; link_tinymce.click end
  def goToEntryAd; link_entry_ad.click end
  def goToDropdown; link_dropdown.click end
  def goToLinkInputs; link_inputs.click end
  def goToExitMenu; link_exit_menu.click end
  def goToShadowDom; link_shadow_dom.click end
  def goToAbTesting; link_ab_testing.click end
  def goToBasicAuth; link_basic_auth.click end
  def goToCheckboxes; link_checkboxes.click end
  def goToDigestAuth; link_digest_auth.click end
  def goToExitIntent; link_exit_intent.click end
  def goToFileUpload; link_file_upload.click end
  def goToKeyPresses; link_key_presses.click end
  def goToGeolocation; link_geolocation.click end
  def goToStatusCodes; link_status_codes.click end
  def goToDragAndDrop; link_drag_and_drop.click end
  def goToFloatingMenu; link_floating_menu.click end
  def goToJQueryUIMenu; link_jqueryui_menu.click end
  def goToNestedFrames; link_nested_frames.click end
  def goToRedirectLink; link_redirect_link.click end
  def goToBrokenImages; link_broken_images.click end
  def goToFileDownload; link_file_download.click end
  def goToFormAuth; link_form_authentication.click end
  def goToSlowResources; link_slow_resources.click end
  def goToDynamicContent; link_dynamic_content.click end
  def goToDynamicLoading; link_dynamic_loading.click end
  def goToForgotPassword; link_forgot_password.click end
  def goToChallengingDOM; link_challenging_dom.click end
  def goToInfiniteScroll; link_infinite_scroll.click end
  def goToDynamicControls; link_dynamic_controls.click end
  def goToJavaScriptError; link_javascript_error.click end
  def goToMultipleWindows; link_multiple_windows.click end
  def goToShiftingContent; link_shifting_content.click end
  def goToHorizontalSlider; link_horizontal_slider.click end
  def goToJavaScriptAlerts; link_javascript_alerts.click end
  def goToAddRemoveElements; link_add_remove_elements.click end
  def goToSecureFileDownload; link_secure_file_download.click end
  def goToSortableDataTables; link_sortable_data_tables.click end
  def goToNotificationMessages; link_notification_messages.click end
  def goToDisappearingElements; link_disappearing_elements.click end
end