require 'rails_helper'

describe 'Showing "Our Story" page' do
  before { visit page_path('our_story') }

  it 'displays the story' do
    within 'main' do
      expect(page).to have_content 'Our story'
    end
  end
end
