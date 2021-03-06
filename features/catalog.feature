Feature: catalog    

    As a user
    So that I can see a catalog of existing products
    I want to be presented with a catalog containing all products

Background: products in database and a user is logged in

    Given the following products exist:
    | name      | brief_description | full_description | price |
    | Apple     | fruit             | full descrip     | 1.10  |
    | Orange    | fruit             | full descrip     | 1.15  |
    | Paper     |                   | full descrip     | 0.30  |
    | Scissor   | office supply     | full descrip     | 5.15  |

Scenario: User Views the Catalog
    When user visits the Catalog page
    And user should see "Apple"
    And user should see "office supply"
    And user should not see "full descrip"
    And user should see "$1.10"

Scenario: User Checks out
    When user visits the Catalog page
    And user adds the first item to the cart
    And user presses "Checkout"
    And user fills and submits the form (places the order)
    Then user should see "Order was successfully created."
    And user should receive an "order_received" email.
