require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "User" do
  scenario "User can sign up to create a profile" do
    create_new_user
    expect(page).to have_content("User successfully created")
  end

  scenario "User can login to their profile" do
    create_new_user
    click_link "Log In"
    fill_in('username', with: 'CoolDude12')
    fill_in('password', with: 'tubular')
    click_button "Log In"
    expect(page).to have_content("Logged in successfully")
  end
end
