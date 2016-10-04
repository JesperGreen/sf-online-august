Feature: As a Customer
  in order to see restaurants in my area
  I need to see a map and list with local restaurants.

  Background:
    Given the following users exist
      | name  | email         | role  |
      | Anna  | anna@food.se  | owner |
      | Janne | janne@food.se | owner |

    And the following restaurants exists
      | name | description | town | owner |
      | McD  | Nice food   | Home | Anna  |
      | McF  | Nice food   | Gone | Janne |

    And I am on the "index" page

  @javascript
  Scenario: Viewing my location on the map
    And my location is set to "57.7088700" lat and "11.9745600" lng
    And the map has been loaded
    Then I should see "2" markers

#  This is tested in our unit tests. There is no impact on the user interface
#  Scenario: Geocode restaurant
#    Given I am on restaurant page for "McD"
#    Then "McD" should have a latitude
#
#  This should be moved to a feature dealing with visiting a specific restaurant.
#  Scenario: Listing restaurants on index
#    Then I should see:
#      | content |
#      | McD     |
#      | McF     |
#    When I click the link "McD"
#    Then I should be on the restaurant page for "McD"
