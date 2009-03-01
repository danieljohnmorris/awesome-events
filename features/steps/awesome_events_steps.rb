Given /^I know GeekUp's upcoming id$/ do
  @group_id = 1479
end

Given /^I know my Upcoming api key$/ do
  @api_key = '1eb8461830'
end

When /^I create a group object$/ do
  @group = Upcoming::Group.new(:api_key => @api_key, :id => @group_id)
end

When /^I call Upcoming api: group\.getEvents$/ do
  @events = @group.fetch_events(:tense => :upcoming)
end

Then /^I see a list of ruby xml objects$/ do
  puts @events
  !@events.empty?
end
