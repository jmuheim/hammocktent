require 'rails_helper'

describe 'Showing about page' do
  it 'displays a welcome message' do
    visit page_path('about')

    expect(page).to have_content 'About Hammock Tent'
  end
end
