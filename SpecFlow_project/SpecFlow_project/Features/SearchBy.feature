Feature: SearchBy functionality
	As a user I want to find information efficiently according to my specific needs.
	In order to satisfy this requirement filter tabs are available. 

	Background: 
	Given I am at the Search page
	And the interface language is ukrainian

@search
Scenario Outline: Successful search result by title 
	And I have entered a <word> into the search field
	When I press search button
	Then the result set titles contain accurate data

	Examples: 
	| word      |
	| погода    |
	| поранення |
	| жителька  |
	| справа    | 
	
@search
Scenario Outline: Successful search result by title and date(single day) 
	And I have entered a <word> into the search field
	And used a filter by <date>
	When I press search button
	Then the result set titles contain accurate data for a specified date

	Examples: 
	| word      |  | date       |
	| погода    |  | 04.03.2020 |
	| поранення |  | 16.04.2020 |
	| жителька  |  | 22.03.2000 |
	| справа    |  | 22.03.2018 |


#Scenario: Unsuccesful search by title
#	...
#Scenario:Successful search result by title and date(interval)
#	...

	



#	Only authourized users can post a comment