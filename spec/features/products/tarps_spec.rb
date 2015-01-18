require 'rails_helper'

describe 'Showing the tarps page' do
  before { visit products_path('tarps') }

  it 'displays some general informations' do
    within 'main' do
      expect(page).to have_content 'Especially designed to fit all 90 Degree Hammock models and made of ultralight Cuben Fiber fabric'
    end
  end

  it 'displays the different tarp versions' do
    within 'main' do
      expect(page).to have_content '90° Tarp-Tent UL'
    end
  end
end
