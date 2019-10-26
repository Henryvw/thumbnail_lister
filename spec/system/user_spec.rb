require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'can register a new account' do
    visit root_path
    click_link 'Register'
    fill_in 'user_email', with: 'thumb_lover123@gmail.com'
    fill_in 'user_password', with: '1234fingers'
    fill_in 'user_password_confirmation', with: '1234fingers'
    click_button 'Regiser'
    expect(page).to have_content 'Welcome to Thumbnail Lister!'
    expect(page).to have_http_status(:success)
  end

  it 'can log in with its account infos' do
  end
end
