Given(/^I am on the homepage and have signed up$/) do
  visit '/'
  FactoryGirl.create(:user)
end

When(/^I enter my details$/) do
  click_link "Sign In"
  find('#signInEmail').set('michaelbottjer@hotmail.com')
  # fill_in "Email", with: "michaelbottjer@hotmail.com"
  find('#signInPassword').set('devesh1234')
  find('#signInButton').click
end

Then(/^I should be signed in$/) do
  expect(page).to have_content "Welcome michaelbottjer@hotmail.com,"
end

Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter my sign up details$/) do
  click_link "Sign Up"
  find('#signUpEmail').set('michaelbottjer@hotmail.com')
  # fill_in "Email", with: "michaelbottjer@hotmail.com"
  find('#signUpPassword').set('devesh1234')
  find('#signUpPasswordConfirmation').set('devesh1234')
  find('#signUpButton').click
end