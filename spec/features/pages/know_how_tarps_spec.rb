require 'rails_helper'

describe 'Showing "Know How: Tarps" page' do
  before { visit page_path('know_how_tarps') }

  it 'displays the details' do
    within 'main' do
      expect(page).to have_content 'How to pitch the 90 Degree Tarp-Tent above the hammock'
      expect(page).to have_content 'How to pitch the 90 Degree Tarp-Tent on the ground'
      expect(page).to have_content 'Tips and Tricks: How to keep the guy lines tidy'
    end
  end

  it 'displays a link to the manual download' do
    within 'main' do
      expect(page).to have_link 'Download 90° Tarp Manual'
    end
  end
end
