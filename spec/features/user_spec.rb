require 'rails_helper'

RSpec.feature "User" do
  scenario "User can sign up to create a profile" do
    visit '/'
    click_link "Sign Up"
    fill_in('user[username]', with: 'CoolDude12')
    fill_in('user[password]', with: 'tubular')
    fill_in('user[password_confirmation]', with: 'tubular')
    click_button "Create User"
    expect(page).to have_content("User successfully created.")
  end
end
