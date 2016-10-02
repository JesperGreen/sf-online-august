Feature: As a visitor
  in order to use the system
  I need to have a landing page.

Scenario: Viewing the landing page
  Given I am on the "index" page
  Then I should see:
    | content                        |
    | What do you feel like tonight? |
    | index content                  |
    | Link to menus                  |
