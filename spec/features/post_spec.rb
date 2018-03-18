require 'rails_helper'

RSpec.feature "Post Management" do

  scenario "User can create a post" do
    user_logs_in
    click_link "New Post"
    fill_in('post[caption]', with: "Check out these gnarly waves")
    click_button "Create Post"
    expect(page).to have_content("Picture posted successfully")
  end

end
