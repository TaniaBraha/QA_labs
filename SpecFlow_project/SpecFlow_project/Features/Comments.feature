Feature: Comments and their impact on articles
	In order to provide an interaction between the service and users comments are used.
	The restriction is that unauthorized users can`t add comments.
	The arcticle or publication has it`s own comments count.
	
	Background: 
	Given I have entered some text into the comment text area

Scenario: Add comment
	And I am an authorized user 
	When I click on Submit button
	Then the comment is added to the corresponding arcticle

Scenario: Comments count update
	And I am an authorized user 
	When I click on Submit button
	Then the comment is added to the corresponding arcticle and comments count is increased by one

Scenario: Check user permissions to add comments
	And I am an unauthorized user
	When I click on Submit button
	Then the authorization window is displayed

