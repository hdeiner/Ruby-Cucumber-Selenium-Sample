Feature: Search Google
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  Scenario Outline: Search for cucumber
    Given I open Google
    When I query on "<queryText>"
    Then I should see "<queryResults>" on the page returned

    Examples:
    |queryText     |queryResults                                |
    |cucumber bdd  |Cucumber is for Behaviour-Driven Development|
    |Bernie Sanders|Bernie Sanders for President                |
    |Howard Deiner |Deinersoft, Inc.                            |
