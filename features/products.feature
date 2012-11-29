Feature: products

	As a user
	So that I can see a list of existing products and their details
	I want to be presented with a list of existing products and be able to edit them

Background: products in database and a user is logged in

	Given the following products exist:
	| name		| full_description	| price	|
	| Apple		| fruit	            | 1.10	|
	| Orange	| fruit	            | 1.15	|
	| Paper		|           	    | 0.30	|
	| Scissor	| office supply     | 5.15	|

	Given a logged in user
	
Scenario: User Views Product List
	When user visits the Product List page
	And user should see "Apple"
	And user should see "Paper"

Scenario: User updates the description of a product
	When user visits the edit page for "Paper"
	And user fills in "Full description" with "office supply"
	And user presses "Update Product"
	Then the full description of "Paper" should be "office supply"

Scenario: User can upload an accepted filetype as an image
	When user visits the edit page for "Orange"
	And user attaches the file "test/fixtures/orange.png" to "Image"
	And user presses "Update Product"
	Then user should see an image with an alt-text of "Orange"

Scenario: User cannot upload an unaccepted filetype as an image
	When user visits the edit page for "Scissor"
	And user attaches the file "test/fixtures/badfile.pdf" to "Image"
	And user presses "Update Product"
	Then user should see "Image content type is invalid"