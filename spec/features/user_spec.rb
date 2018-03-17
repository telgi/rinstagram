require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "User Management" do

  context "Happy Path" do

    scenario "User can sign up to create a profile" do
      create_good_new_user
      expect(page).to have_content("User successfully created")
    end

    scenario "User can login to their profile if username and password is correct" do
      user_logs_in
      expect(page).to have_content("Logged in as CoolDude12")
    end

    scenario "User can logout of their profile" do
      user_logs_in
      click_link "Log Out"
      expect(page).to have_content("Logged out successfully")
    end

    scenario "User can't login if they are already logged in" do
      user_logs_in
      expect(page).not_to have_content("Log In")
    end

  end

  context "Unhappy Path" do

    scenario "User needs to provide a username with at least 5 characters to signup" do
      create_bad_new_user
      expect(page).to have_content("Username is too short (minimum is 5 characters)")
    end

    scenario "User needs to provide a unique username to signup successfully" do
      create_good_new_user
      create_good_new_user
      expect(page).not_to have_content("User successfully created")
    end

    scenario "User can't login to their profile if username does not exist" do
      visit '/'
      click_link "Log In"
      fill_in('username', with: 'NotACoolDude12')
      fill_in('password', with: 'neato')
      click_button "Log In"
      expect(page).to have_content("Login failed")
    end

    scenario "User can't login to their profile if password is not correct" do
      create_good_new_user
      click_link "Log In"
      fill_in('username', with: 'CoolDude12')
      fill_in('password', with: 'radical')
      click_button "Log In"
      expect(page).to have_content("Login failed")
    end

  end

end
