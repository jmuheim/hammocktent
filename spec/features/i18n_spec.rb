require 'rails_helper'

describe 'I18n' do
  it 'uses english as default language' do
    visit root_path

    expect(page).to have_content 'The 90 Degree Hammock'
  end

  it 'offers contents in english' do
    visit root_path(locale: :en)

    expect(page).to have_content 'The 90 Degree Hammock'
  end

  it 'offers contents in german' do
    visit root_path(locale: :de)

    expect(page).to have_content 'Die 90 Grad Hängematte'
  end
end
