require 'rails_helper'

RSpec.describe 'Thumbnail', type: :system do
  it 'can upload a thumbnail when logged in' do
    existing_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'session_email', with: existing_user.email
    fill_in 'session_password', with: existing_user.password
    click_button 'Log In'
    click_link 'Add a Thumbnail here'
    attach_file('thumbnail_picture', 'spec/support/assets/test-image.JPG')
    click_button 'Upload It'
  end
end
