Before ('@sign_in') do 
  FactoryGirl.create(:user)
  visit '/'
  click_link "Sign In"
  find('#signInEmail').set('michaelbottjer@hotmail.com')
  # fill_in "Email", with: "michaelbottjer@hotmail.com"
  find('#signInPassword').set('devesh1234')
  find('#signInButton').click
end