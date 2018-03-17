def create_new_user
  visit '/'
  click_link "Sign Up"
  fill_in('user[username]', with: 'CoolDude12')
  fill_in('user[password]', with: 'tubular')
  fill_in('user[password_confirmation]', with: 'tubular')
  click_button "Create User"
end
