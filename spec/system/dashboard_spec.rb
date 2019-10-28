require 'rails_helper'

RSpec.describe 'Dashboard', type: :system do
  it 'can load a welcome page' do
    visit root_path
    expect(page).to have_content 'Welcome to Thumbnail Lister'
  end

  it 'can, if logged in, access the new thumbnail page from the dashboard' do
    existing_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'session_email', with: existing_user.email
    fill_in 'session_password', with: existing_user.password
    click_button 'Log In'
    expect(page).to have_content 'Add a Thumbnail here'
  end
end
