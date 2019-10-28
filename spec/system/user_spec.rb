require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'can register a new account' do
    visit root_path
    click_link 'Register'
    fill_in 'user_email', with: 'thumb_lover123@gmail.com'
    fill_in 'user_password', with: '1234fingers'
    fill_in 'user_password_confirmation', with: '1234fingers'
    click_button 'Register'
    expect(page).to have_content 'Congrats on your new Thumbnail Listener account.'
  end

  it 'can log in with its account infos' do
    existing_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'session_email', with: existing_user.email
    fill_in 'session_password', with: existing_user.password
    click_button 'Log In'

    expect(page).to have_content 'Welcome to Thumbnail Lister, Buddy!'
  end

  it 'when logged in, it removes Sign In Button and displays your email' do
    existing_user = FactoryBot.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'session_email', with: existing_user.email
    fill_in 'session_password', with: existing_user.password
    click_button 'Log In'
    expect(page).to_not have_content('Sign In')
    expect(page).to have_content(existing_user.email)
  end
end
