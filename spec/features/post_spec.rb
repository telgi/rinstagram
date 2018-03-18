require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "Post Management" do

  scenario "User can create a post" do
    user_creates_post
    expect(page).to have_content("Picture posted successfully")
  end

  scenario "User can edit their post" do
    user_creates_post
    click_link "PhotoFeed"
    click_link "Edit"
    fill_in('post[caption]', with: "Check out these bodacious waves")
    click_button "Update Post"
    expect(page).to have_content("Post successfully updated")
    expect(page).to have_content("Check out these bodacious waves")
  end

end
