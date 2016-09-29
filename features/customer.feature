Feature: As a visitor
  in order to check out or rate restaurants
  I need to be able to register as a Customer.

Scenario: I register as a Customer
  Given I am on the "register" page
  Then I should see:
    | content               |
    | Register              |
    | Name                  |
    | Email                 |
    | Address               |
    | Password              |
    | Password Confirmation |
  When I fill in:
    | element                    | content          |
    | Name                       | Julie            |
    | Email                      | julie@random.com |
    | Address                    | Fjällgatan 3, Göteborg, Västa Götaland, Sverige |
    | Password                   | password         |
    | Password Confirmation      | password         |
  When I click the "Register" button
  Then I should be on the "restaurant" page
  And I should see "Julie"
