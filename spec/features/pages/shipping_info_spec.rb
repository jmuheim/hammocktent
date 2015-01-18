require 'rails_helper'

describe 'Showing "Shipping Info" page' do
  before { visit page_path('shipping_info') }

  it 'displays the shipping info details' do
    within 'main' do
      expect(page).to have_content 'Shipping Info'
    end
  end
end
