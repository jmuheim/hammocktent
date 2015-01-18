require 'rails_helper'

describe 'Showing "Know How: Hammocks Manual" page' do
  before { visit page_path('know_how_hammocks_manual') }

  it 'displays the details' do
    expect(page).to have_content 'A few things you need to know about the 90 Degree Hammock and how to use it'
  end
end
