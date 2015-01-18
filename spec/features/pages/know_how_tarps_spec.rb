require 'rails_helper'

describe 'Showing "Know How: Tarps" page' do
  before { visit page_path('know_how_tarps') }

  it 'displays the details' do
    expect(page).to have_content 'How to pitch the 90 Degree Tarp-Tent above the hammock'
  end

  it 'displays a link to the manual download' do
    expect(page).to have_link 'Download 90° Tarp Manual'
  end
end
