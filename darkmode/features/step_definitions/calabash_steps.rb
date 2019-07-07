require 'calabash-android/calabash_steps'

Then(/^I click on "(.*)"$/) do |text|
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Then(/^I click on the button "(.*)"$/) do |text|
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

When("I press the menu item") do
    tap_when_element_exists("android.support.v7.widget.ActionMenuPresenter$OverflowMenuButton")
end