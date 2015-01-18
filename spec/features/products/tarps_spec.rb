require 'rails_helper'

describe 'Showing the tarps page' do
  it 'displays the different tarp versions' do
    visit products_path('tarps')

    expect(page).to have_content '90° Tarp-Tent UL'
  end
end
