require 'rails_helper'

describe 'Showing "Know How: Hammocks" page' do
  before { visit page_path('know_how_hammocks') }

  it 'displays the details' do
    expect(page).to have_content 'The 90 Degree Hammock is different from hammocks you know and a bit more complex'
  end

  it 'displays a link to the manual download' do
    expect(page).to have_link 'Download 90° Hammock Manual'
  end
end
