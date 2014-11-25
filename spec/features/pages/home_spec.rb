require 'rails_helper'

describe 'Showing the home page' do
  it 'displays a welcome message' do
    visit root_path

    expect(page).to have_content 'The 90 Degree Hammock – possibly the most comfortable and versatile hammock in the world.'
  end
end
