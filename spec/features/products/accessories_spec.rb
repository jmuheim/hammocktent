require 'rails_helper'

describe 'Showing the accessories page' do
  it 'displays the accessirues' do
    visit products_path('accessories')

    expect(page).to have_content 'Hammock Suspension Ropes'
    expect(page).to have_content 'Extensions / Replacement Tree Straps'
    expect(page).to have_content 'Drip Clips and Slit Line Hammock Suspension, by Exped'
    expect(page).to have_content 'Ultralight Titanium Tent Stakes'
    expect(page).to have_content 'Lightweight Guy Line by the Meter'
  end
end
