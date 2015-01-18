require 'rails_helper'

describe 'Showing Contact page' do
  before { visit page_path('contact') }

  it 'displays the contact' do
    within 'main' do
      expect(page).to have_content 'Contact'
    end
  end
end
