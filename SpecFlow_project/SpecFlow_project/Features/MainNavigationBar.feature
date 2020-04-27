Feature: MainNavigationBar features
	As a user I want to navigate over the site efficienly.

@usability_test
Scenario Outline: Navigation bar dropdown menu
	Given I am at the Home page
	And the interface language is ukrainian
	When I click on <tabname> tab
	Then the drop-down menu is displayed

	Examples: 
	| tabname   |
	| Послуги   |
	| Соцмережі |
	| Укр       |

@language
Scenario Outline: Navigation bar content translation
	Given I am at the Home page
	And I click on Language tab
	When I choose and click on <DropDownMenuItem> tab
	Then the Login tab name is equivalent to <LangVariant>

	Examples: 
	| DropDownMenuItem |  | LangVariant |
	| Укр              |  | Вхід        |
	| Рус              |  | Вход        |
	| Eng              |  | Login       |

