require 'rails_helper'

describe 'Showing "Know How: Hammocks" page' do
  before { visit page_path('know_how_hammocks') }

  it 'displays the details' do
    within 'main' do
      expect(page).to have_content 'How to hang and pack up the 90 Degree Hammock'
      expect(page).to have_content '90 Degree Hammock Tips and Tricks'
    end
  end

  it 'displays a link to the manual download' do
    within 'main' do
      expect(page).to have_link 'Download 90° Hammock Manual'
    end
  end
end
