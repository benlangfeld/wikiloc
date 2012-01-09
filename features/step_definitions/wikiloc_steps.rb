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

When /^I ask for "([^"]*)"$/ do |data_type|
  @interactor.set_data_type(data_type)
  info = @interactor.get_info
  output.puts info
end

Then /^the data should be "([^"]*)"$/ do |message|
  output.messages.should include(message)
end
