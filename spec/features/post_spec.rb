require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "Post Management" do

  context "Happy Path" do

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

    scenario "User can delete their post" do
      user_creates_post
      click_link "PhotoFeed"
      click_link "Delete"
      expect(page).to have_content("Post successfully deleted")
    end

  end

  context "Unhappy Path" do

    scenario "User cannot create a post without a picture" do
      user_logs_in
      click_link "New Post"
      fill_in('post[caption]', with: "Check out these gnarly waves")
      click_button "Create Post"
      expect(page).not_to have_content("Picture posted successfully")
      expect(page).to have_content("Image can't be blank")
    end

  end

end
