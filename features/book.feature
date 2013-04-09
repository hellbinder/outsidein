Feature: User manages books
  In order to manage all the books
  As an user
  I want to be able to add/delete/update all information on books

  Scenario: User adds a new book
    Given I go to new book page
    And I fill in "Name" with "War & Peace"
    When I Press "Create"
    Then I should be on the book list page
    And I should see "War & Peace"
  
  
  

