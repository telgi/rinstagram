def create_good_new_user
  visit '/'
  click_link "Sign Up"
  fill_in('user[username]', with: 'CoolDude12')
  fill_in('user[password]', with: 'tubular')
  fill_in('user[password_confirmation]', with: 'tubular')
  click_button "Create User"
end

def create_bad_new_user
  visit '/'
  click_link "Sign Up"
  fill_in('user[username]', with: 'Dude')
  fill_in('user[password]', with: 'kl')
  fill_in('user[password_confirmation]', with: 'kl')
  click_button "Create User"
end

def user_logs_in
  create_good_new_user
  click_link "Log In"
  fill_in('username', with: 'CoolDude12')
  fill_in('password', with: 'tubular')
  click_button "Log In"
end

def user_creates_post
  user_logs_in
  click_link "New Post"
  fill_in('post[caption]', with: "Check out these gnarly waves")
  click_button "Create Post"
end
