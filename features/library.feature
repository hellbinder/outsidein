Feature: User manages library
  In order to manage the libraries
  As a User
  I want to be able to create/add/update/delete libraries and it's books

  Scenario: User adds a new library
      Given I go to new library page
      And I fill in "Name" with "Library of awesomeness"
      And I fill in "Build Date" with "1990"
      When I press "Create" button
      Then I should be on the library book list
      And I should see "Library of awesomeness"
      And I should see "1990"
  @test

  Scenario: Use adds book to the library
      Given the following "book"
      | name           |
      | Boring         |
      | Booya          |
      | Method         |
      | Book of Mormom |
      Given I go to the add book to library page
      When I choose "Method" from "book_id"
      And I press "Add" button
      Then I should be on the library book list
      And I should see "Method"

