def create_new_user
  visit '/'
  click_link "Sign Up"
  fill_in('user[username]', with: 'CoolDude12')
  fill_in('user[password]', with: 'tubular')
  fill_in('user[password_confirmation]', with: 'tubular')
  click_button "Create User"
end

def user_logs_in
  create_new_user
  click_link "Log In"
  fill_in('username', with: 'CoolDude12')
  fill_in('password', with: 'tubular')
  click_button "Log In"
end
