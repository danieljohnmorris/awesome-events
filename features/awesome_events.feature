Feature: List events for an Upcoming group
  In order ingest new events 
  As an events subscriber
  I want to list all events for a group

  Scenario: List Upcoming events for GeekUp
    Given I know GeekUp's upcoming id
	And I know my Upcoming api key
    When I create a group object
	And I call Upcoming api: group.getEvents 
    Then I see a list of ruby xml objects
