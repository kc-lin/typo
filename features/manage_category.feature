Feature: Manage Categories
  As a blog administrator
  In order to better organise articles
  I want to be able to manage categories on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel


  Scenario: Visit Categories page
    #Given I am on the admin page
#    When I follow "Categories:"
    When I follow "Categories:"
    Then I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Description"

  Scenario: Create a new category
    Given I am on the categories page
    When I fill in "Name" with "Foobar"
    And I fill in "Keywords" with "Lorem Ipsum"
    And I fill in "Description" with "This is the Foobar category"
    And I press "Save"
    #Then I should be on the categories page
    Then I should see "Foobar"
    #When I follow "Foobar"
    And I should see "Lorem Ipsum"
    And I should see "This is the Foobar category"

  Scenario: Edit an existing category
    When I follow "Categories:"
    Then I follow "General"
    And I fill in "Keywords" with "Lorem Ipsum"
    And I fill in "Description" with "This is the General category"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Lorem Ipsum"
    And I should see "This is the General category"
