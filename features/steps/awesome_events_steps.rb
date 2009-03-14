### Scenario: List upcoming events for GeekUp

Given /^I know GeekUp's upcoming id$/ do
  @group_id = 1479
end

Given /^I know my Upcoming api key$/ do
  @api_key = '1eb8461830'
end

When /^I create a group object$/ do
  @config = AwesomeEvents::Upcoming::Config.new(:api_key => @api_key)
  @group = AwesomeEvents::Upcoming::Group.new(:id => @group_id, :config => @config)
end

When /^I lookup group's upcoming events$/ do
  @events = @group.fetch_events(:tense => :upcoming)
end

Then /^the returned value is an hpricot xml object$/ do
  Hpricot::Doc == @events.class
end

Then /^I see a list of ruby xml objects$/ do
  @events.children.length > 0
end

### Scenario: List past events for GeekUp

When /^I lookup group's past events$/ do
  @events = @group.fetch_events(:tense => :past)
end
