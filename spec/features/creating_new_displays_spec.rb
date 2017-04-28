
require 'spec_helper.rb'
require 'rails_helper.rb'

feature 'Creating displays' do
  scenario 'can create a display' do
  	visit '/'
  	click_link 'New Display'
  	attach_file('Image', "spec/files/images/test.jpg")
  	fill_in 'Caption', with: 'test test test #testtime'
  	click_button 'Create Display'
  	expect(page).to have_content('#testtime')
    expect(page).to have_css("img[src*='test.jpg']")
  end
end