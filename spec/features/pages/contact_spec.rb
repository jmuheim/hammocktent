require 'rails_helper'

describe 'Showing Contact page' do
  it 'displays the contact' do
    visit page_path('contact')

    expect(page).to have_content 'Any questions, issues, or feedback?'
  end
end
