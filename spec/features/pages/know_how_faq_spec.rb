require 'rails_helper'

describe 'Showing "Know How: FAQ" page' do
  it 'displays the faq' do
    visit page_path('know_how_faq')

    expect(page).to have_content 'Hanging the hammock; getting in and out of the hammock'
  end
end
