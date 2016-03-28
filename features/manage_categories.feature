Feature: Manage Categories
  As a blog administrator
  In order to organize my posts
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And there are no categories

  Scenario: Successfully add a category
    When I follow "Categories"
    And I fill in "Name" with "Test"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Test"
    And I should have 1 category
