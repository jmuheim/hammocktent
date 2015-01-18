require 'rails_helper'

describe 'Showing "Know How: Hammocks Manual" page' do
  before { visit page_path('know_how_hammocks_manual') }

  it 'displays the details' do
    within 'main' do
      expect(page).to have_content 'A few things you need to know about the 90 Degree Hammock and how to use it'
      expect(page).to have_content 'A few things you need to know about taking care of your hammock and tarp'
      expect(page).to have_content 'A few important notes on safety'
      expect(page).to have_content 'Hanging the 90 Degree Hammock'
      expect(page).to have_content 'Packing up the 90 Degree Hammock'
      expect(page).to have_content "What do you do if you can't find any trees?"
    end
  end
end
