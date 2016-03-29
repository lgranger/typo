Feature: Manage Categories
  As a blog administrator
  In order to organize my posts
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add a category
    Given there are no categories
    When I follow "Categories"
    And I fill in "Name" with "Test"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Test"
    And I should have 1 category

  Scenario: Successfully edit a category
    Given I have 1 category
    When I follow "Categories"
    When I follow "Edit"
    And I fill in "Name" with "Another Test"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Another Test"
    And I should have 1 category

  Scenario: Unsuccessfully add a category
    Given there are no categories
    When I follow "Categories"
    And I press "Save"
    Then I should see "1 error prohibited this category from being saved"
    And I should have 0 category
