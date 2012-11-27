Feature: products

	As a user
	So that I can see a list of existing products
	I want to be presented with a list of existing products

Background: products in database

	Given the following products exist:
	| name		| description	| price	|
	| Apple		| fruit	        | 1.10	|
	| Orange	| fruit	        | 1.15	|
	| Paper		| office supply	| 0.30	|
	| Scissor	| office supply | 5.15	|

Scenario: User views home page
	When user visits the Product List page
	And user should see "Apple"
	And user should see "Paper" 