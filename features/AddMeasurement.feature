Story: add a measurement
	
	As a fitness app user
	I want to be able to add a measurement
	So that I can track my progress
	
	Scenario: successful measurement
	Given I am on the measurement creation page
	
	When I add a new measurement
	
	Then I should see the page for my newly created measurement
	And the notice 'Your measurement has been recorded successfully'
	