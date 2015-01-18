require 'rails_helper'

describe 'Showing the home page' do
  before { visit root_path }

  it 'displays a welcome message' do
    within 'main' do
      expect(page).to have_content 'The 90 Degree Hammock – possibly the most comfortable and versatile hammock in the world.'
    end
  end

  it 'displays many usages of the hammock' do
    within 'main' do
      expect(page).to have_content 'Welcome to the exciting experience of sleeping in a hammock - wherever you are, however you like. We are sure you will love it!'
      expect(page).to have_content 'Carry your comfortable bed with you and camp anywhere between trees in the great outdoors.'
      expect(page).to have_content 'Have a deployable bed ready in a little corner of your baggage, pack or car, weighing just a few hundred grams.'
      expect(page).to have_content 'A hammock you can comfortably sleep a whole night in, even on your side!'
      expect(page).to have_content 'Always have that extra bed for guests in the house that is not in your way.'
      expect(page).to have_content "Combined with our ultralight Tarp-Tent it's an all-round shelter system for camping pretty much everywhere, even on the ground where there are no trees."
      expect(page).to have_content 'Get an hour of rest on your verandah, in a hammock that is not much less than a flying bed but can be stowed away in a corner within seconds.'
      expect(page).to have_content 'Laugh at the mud, snow, critters, roots and rocks a few inches below you. No mosquito attacks thanks to the integrated net!'
      expect(page).to have_content 'Spend a summer night under the stars, above the ground and protected from all kinds of bugs and critters.'
      expect(page).to have_content "Hiking, biking, canoeing – don't worry about getting back before nightfall."
    end
  end
end
