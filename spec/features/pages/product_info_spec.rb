require 'rails_helper'

describe 'Showing "Product Info" page' do
  before { visit page_path('product_info') }

  it 'displays the product info' do
    within 'main' do
      expect(page).to have_content 'Product info'
      expect(page).to have_content 'Features and Naming'
    end
  end
end
