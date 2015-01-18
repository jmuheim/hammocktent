require 'rails_helper'

describe 'Showing "Cancel Checkout" page' do
  before { visit page_path('cancel_checkout') }

  it 'displays the cancel checkout details' do
    within 'main' do
      expect(page).to have_content 'Checkout cancelled'
    end
  end
end
