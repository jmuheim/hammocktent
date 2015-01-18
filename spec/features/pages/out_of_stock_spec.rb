require 'rails_helper'

describe 'Showing "Out of Stock" page' do
  before { visit page_path('out_of_stock') }

  it 'displays the out of stock details' do
    within 'main' do
      expect(page).to have_content 'Product out of Stock'
    end
  end
end
