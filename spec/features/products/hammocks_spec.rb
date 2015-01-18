require 'rails_helper'

describe 'Showing the hammocks page' do
  before { visit products_path('tarps') }

  it 'displays the different hammock versions' do

    expect(page).to have_content '90° Hammock Alpha (basic)'
    expect(page).to have_content '90° Hammock Beta (with pad-sleeve)'
    expect(page).to have_content '90° Hammock Gamma (with pad-sleeve and bug-net)'
    expect(page).to have_content '90° Hammock Gamma UL (ultralight, with pad-sleeve and bug-net)'
    expect(page).to have_content '90° Hammock Delta UL (ultralight, with bug-net only)'
  end

  it 'displays the comparison chart' do
    expect(page).to have_content 'Comparison Chart'
  end
end
