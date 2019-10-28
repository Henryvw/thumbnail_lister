require 'rails_helper'

RSpec.describe 'Thumbnail', type: :system do
  it 'can upload a thumbnail' do
    existing_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'session_email', with: existing_user.email
    fill_in 'session_password', with: existing_user.password
    click_button 'Log In'
    expect(page).to have_content 'Add a Thumbnail here'
  end
end
