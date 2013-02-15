Story: add a measurement
	
	As a fitness app user
	I want to be able to add a measurement
	So that I can record my progress
	
	Scenario: successful measurement addition
	Given I am on the measurement creation page
	
	When I add a new measurement
	
	Then I should see the page with the list of all measurements
	And I should see the notice 'Your measurement has been recorded successfully'
	