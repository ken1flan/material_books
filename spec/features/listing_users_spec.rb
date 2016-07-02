require 'rails_helper'

RSpec.describe "User management", type: :feature do
  before do
    create(:user, login_id: 'John', nickname: 'Jonny')
  end

  scenario "User visits user listing page" do
    visit "/users"

    expect(page).to have_text("Listing users")
    expect(page).to have_text("John")
    expect(page).to have_text("Jonny")
  end
end
