require 'rails_helper'

RSpec.describe "User registration", type: :feature do
  scenario "User visits user listing page" do
    visit "/"
    click_link "Sign up"

    expect(page).to have_text('Authorize with twitter')
  end
end
