require 'rails_helper'

describe 'Showing the accessories page' do
  before { visit products_path('accessories') }

  it 'displays the accessories' do
    within 'main' do
      expect(page).to have_content 'Hammock Suspension Ropes' # TODO: What about have_heading method?
      expect(page).to have_content 'Extensions / Replacement Tree Straps'
      expect(page).to have_content 'Drip Clips and Slit Line Hammock Suspension, by Exped'
      expect(page).to have_content 'Ultralight Titanium Tent Stakes'
      expect(page).to have_content 'Lightweight Guy Line by the Meter'
    end
  end
end
