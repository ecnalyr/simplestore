# Given /^a logged in user$/ do
#   @user = User.create!(:email => 'admin@adminsemail.com', :password => 'pas5word')
#   visit('/login')
#   fill_in('Email', :with => @user.email)
#   fill_in('Password', :with => @user.password)
#   click_button('Log In')
# end

module LoginSteps
  def login(email, password)
    visit('/login')
    fill_in('Email', :with => email)
    fill_in('Password', :with => password)
    click_button('Log In')
  end
end

World(LoginSteps)


Given /^a logged in user$/ do
  @user = User.create!(:email => 'admin@adminsemail.com', :password => 'pas5word')
  login(@user.email, @user.password)
end

When /^user logs in$/ do
  login(@user.email, @user.password)
end
