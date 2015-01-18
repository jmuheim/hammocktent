require 'rails_helper'

describe 'Showing "Finish Checkout" page' do
  before { visit page_path('finish_checkout') }

  it 'displays the finish checkout details' do
    within 'main' do
      expect(page).to have_content 'Thank you!'
    end
  end
end
