Feature: products

	As a user
	So that I can see a list of existing products and their details
	I want to be presented with a list of existing products and be able to edit them

Background: products in database

	Given the following products exist:
	| name		| description	| price	|
	| Apple		| fruit	        | 1.10	|
	| Orange	| fruit	        | 1.15	|
	| Paper		|           	| 0.30	|
	| Scissor	| office supply | 5.15	|

Scenario: User Views Product List
	When user visits the Product List page
	And user should see "Apple"
	And user should see "Paper"

Scenario: User updates the description of a product
	When user visits the edit page for "Paper"
	And user fills in "Description" with "office supply"
	And user presses "Update Product"
	Then the description of "Paper" should be "office supply"