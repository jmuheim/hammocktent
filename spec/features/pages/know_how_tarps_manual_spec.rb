require 'rails_helper'

describe 'Showing "Know How: Tarps Manual" page' do
  before { visit page_path('know_how_tarps_manual') }

  it 'displays the details' do
    expect(page).to have_content 'Pitching the 90 Degree Tarp-Tent between trees / structures'
  end
end
