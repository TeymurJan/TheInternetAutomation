# #frozen_string_literal: true

# require 'spec_helper'

# RSpec.describe 'Frames check', type: :feature do
#   it 'check frames' do
#     visit '/nested_frames'
#     frame = page.find('frame[src="/frame_middle"]')
#     driver.switch_to_frame(frame)
#     expect(page.find_element(id: 'content').text).to eq('MIDDLE') 
#   end
# end
