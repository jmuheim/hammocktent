require 'rails_helper'

describe 'Showing "Know How: FAQ" page' do
  before { visit page_path('know_how_faq') }

  it 'displays the faq' do
    within 'main' do
      expect(page).to have_content 'Hanging the hammock; getting in and out of the hammock'
      expect(page).to have_content 'Use of the hammock and sleeping / camping in it'
      expect(page).to have_content 'Quality issues, troubles, care'
      expect(page).to have_content 'Returns, warranty, refunds, repairs'
      expect(page).to have_content 'Hammock and Tarp design'
    end
  end
end
