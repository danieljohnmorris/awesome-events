Feature: List events for an Upcoming group
  In order ingest new events 
  As an events subscriber
  I want to list all events for a group

  Scenario: List upcoming events for GeekUp
    Given I know GeekUp's upcoming id
		And I know my Upcoming api key
    When I create a group object
		And I lookup group's upcoming events
    Then the returned value is an hpricot xml object
		And I see a list of ruby xml objects
		
  Scenario: List past events for GeekUp
    Given I know GeekUp's upcoming id
		And I know my Upcoming api key
    When I create a group object
		And I lookup group's past events
    Then the returned value is an hpricot xml object
		And I see a list of ruby xml objects