Feature: Pop-up window concerns
	In order to improve the product`s usability we should check items related to the pop-up window.
	
	

@usability_test @adaptivity
Scenario Outline: Feasibility to close a pop-up window depending on the screen-width  
	Given I am an unsibscribed user
	And I am at the <DiffentCategory> page
	When I reduce screen-width till <width>
	Then the pop-up window close button is accessible to click on

	Examples: 
	| DifferentCategory |  | width |
	| Головна           |  | 1360  |
	| Головна           |  | 1040  |
	| Погода            |  | 1040  |
	| Погода            |  | 860   |


@language
Scenario Outline: Pop-up window content translation
	Given I am an unsibscribed user
	And I am at the <DiffentCategory> page
	When I change interface language to <lang>
	Then the pop-up window`s content is translated

	Examples: 
	| DifferentCategory |  | lang |
	| Головна           |  | Укр  |
	| Головна           |  | Рус  |
	| Головна           |  | Eng  |
	
