require 'rails_helper'

describe 'Showing "Our Story" page' do
  it 'displays the story' do
    visit page_path('our_story')

    expect(page).to have_content 'HammockTent GmbH was founded in 2014 by Luke in his home country of Switzerland.'
  end
end
