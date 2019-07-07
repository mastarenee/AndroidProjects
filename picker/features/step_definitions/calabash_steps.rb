require 'calabash-android/calabash_steps'

Given /^I set the date to "(\d\d-\d\d-\d\d\d\d)" on DatePicker with index ([^\"]*)$/ do |date, index|
  set_date("android.widget.DatePicker index:#{index.to_i-1}", date)
end

Given ( "I select the date" ) {
  touch("android.widget.EditText index:0")
}

Then /^I enter a date "(\d\d-\d\d-\d\d\d\d)"$/ do |date|
  query("datePicker",:method_name =>'updateDate',:arguments =>[1990,11,30])
end