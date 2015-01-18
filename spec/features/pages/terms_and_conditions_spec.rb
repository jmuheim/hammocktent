require 'rails_helper'

describe 'Showing "Terms and Conditions" page' do
  before { visit page_path('terms_and_conditions') }

  it 'displays the terms and conditions details' do
    within 'main' do
      expect(page).to have_content 'Terms and Conditions'
      expect(page).to have_content 'General'
      expect(page).to have_content 'Contract formation'
      expect(page).to have_content 'Withdrawal from the contract'
      expect(page).to have_content 'Prices'
      expect(page).to have_content 'Deliveries'
      expect(page).to have_content 'Dates of delivery'
      expect(page).to have_content 'Payments'
      expect(page).to have_content 'Warranty'
      expect(page).to have_content 'Safety'
      expect(page).to have_content 'Data privacy'
      expect(page).to have_content 'Applicable law, place of jurisdiction'
    end
  end
end
