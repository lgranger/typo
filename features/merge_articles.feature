Feature: Merge Articles
  As a blog administrator
  In order to reduce blog clutter
  I want to be able to merge together any two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have 2 articles published

  Scenario: Successfully merege two articles
    Given I am on the admin content page
    When I follow "Foobar"
    Then I should be on the admin content edit page
    And I should see "Lorem Ipsum"
    And I should see "Merge Articles"
    When I fill in "Merge Articles" with "2"
    And I press "Merge"
    Then I should be on the article show page
    And I should see "Your artices have successfully merged"
    And I should see "Lorem Ipsum./nLorem Ipsum."
