require 'rails_helper'

RSpec.describe 'Users', type: :system do
  let!(:normal_user) { FactoryBot.create(:user) }

  it 'can register a new account' do
  end

  it 'can log in with its account infos' do
  end
end
