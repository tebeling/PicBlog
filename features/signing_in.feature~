# starts with a short decription of feature
Feature: Signing in
# add individual scenarios. For example, to test unsuccessful signin

# scenario I
  Scenario: Unsuccessful signin
   Given a user visits the signin page
   When he submits invalid signin information
   Then he should see an error message

# scenario II
  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
      And the user submits valid signin information
    Then he should see his profile page
      And he should see a signout link
