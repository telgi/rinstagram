require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "User" do
  scenario "User can sign up to create a profile" do
    create_new_user
    expect(page).to have_content("User successfully created")
  end

  scenario "User can login to their profile" do
    create_new_user
    user_logs_in
    expect(page).to have_content("Logged in successfully")
  end

  scenario "User can logout of their profile" do
    user_logs_in
    click_link "Log Out"
    expect(page).to have_content("Logged out successfully")
  end
end
