require 'rails_helper'

RSpec.describe 'Dashboard', type: :system do
  it 'can load a welcome page' do
    visit root_path
    expect(page).to have_content 'Welcome to Thumbnail Lister'
  end
end
