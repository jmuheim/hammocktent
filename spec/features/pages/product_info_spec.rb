require 'rails_helper'

describe 'Showing "Product Info" page' do
  it 'displays the product info' do
    visit page_path('product_info')

    expect(page).to have_content '90 Degree Hammock Features and Naming'
    expect(page).to have_content '90 Degree Tarp-Tent Features and Naming'
  end
end
