require 'calabash-android/calabash_steps'

Then(/^I click on the element "(.*)"$/) do |text|
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Then(/^I click on the button "(.*)"$/) do |text|
  =
end

When("I press the menu item") do
    perform_action('click_on_screen',5, 5)
end
