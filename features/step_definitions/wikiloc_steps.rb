class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I am not yet using wikiloc$/ do
end

Given /^the location is "([^"]*)"$/ do |location|
  @interactor = Wikiloc::Interactor.new(output)
  @interactor.set_location(location)
end

When /^I start wikiloc/ do
  @interactor = Wikiloc::Interactor.new(output)
  @interactor.start
end

When /^I ask for "([^"]*)"$/ do |data_type|
  @interactor.get_info(data_type)
end

When /$I press enter$/ do
  @output.puts "What do you want to know?"
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Then /^the data should be "([^"]*)"$/ do |message|
  output.messages.should include(message)
end
