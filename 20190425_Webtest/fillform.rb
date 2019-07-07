require 'watir'
require 'webdrivers'
require 'faker'

# Initalize the Browser
browser = Watir::Browser.new :safari

# Navigate to Page
browser.goto 'http://watir.com/examples/forms_with_input_elements.html'

# Authenticate and Navigate to the Form
#browser.link(id: 'sign-in').click
#browser.text_field(data_test: 'email').set 'thomas@gist.com'
#browser.text_field(data_test: 'password').set 'password'
#browser.button(name: 'commit').click
#browser.link(data_test: 'addresses').click
#browser.link(data_test: 'create').click

# This uses the Faker gem to give us Random Data.
# Read more about Faker gem here: https://github.com/stympy/faker#readme

browser.text_field(id: 'new_user_first_name').set Faker::Name.first_name
browser.text_field(id: 'new_user_last_name').set Faker::Name.last_name
browser.text_field(id: 'new_user_email').set Faker::Internet.email
browser.text_field(id: 'new_user_email_confirm').set Faker::Internet.email
browser.text_field(id: 'new_user_occupation').set Faker::Company.bs
browser.text_field(id: 'html5_email').set Faker::Internet.email

# Date Field elements accept Date objects
InDate = Faker::Date.birthday
browser.date_field(id: 'html5_date').set InDate

browser.text_field(id: 'html5_month').set Date.today.month
browser.text_field(id: 'html5_week').set Date.today.wday

nowTime = Date.today.ctime
browser.text_field(id: 'html5_time').set nowTime
browser.text_field(id: 'html5_datetime').set nowTime

browser.text_field(id: 'new_user_username').set Faker::Internet.username
browser.text_field(id: 'new_user_password').set Faker::Internet.password

# Checkboxes can be selected by `label` or `text` locators
browser.checkbox(label: 'Dancing').set 'new_user_interests_dancing'
browser.checkbox(label: 'Food').set 'new_user_interests_food'

# radio buttons can be selected with `text` or `label` locators
# browser.radio(label: 'Absolutely').set


#browser.text_field(id: 'address_street_address').set Faker::Address.street_address
#browser.text_field(id: 'address_secondary_address').set Faker::Address.secondary_address
#browser.text_field(id: 'address_city').set Faker::Address.city

browser.select_list(id: 'new_user_country').select 'Denmark'
browser.select_list(id: 'new_user_languages').select 'Danish'

# select list elements can select by either text or value
#browser.select_list(id: 'new_user_country').select 'Sweden'
#browser.select_list(id: 'new_user_languages').select 'Danish'

#browser.text_field(id: 'address_zip_code').set Faker::Address.zip_code



# Date Field elements accept Date objects
#birthday = Faker::Date.birthday
#browser.date_field.set birthday

#age = Date.today.year - birthday.year
#browser.text_field(id: 'address_age').set age

#browser.text_field(id: 'address_website').set Faker::Internet.url

# File Field elements upload files with the `#set` method, but require the full system path
#file_name = 'somename.txt'
#File.write(file_name, '')
#path = File.expand_path(file_name)
#browser.file_field(id: 'address_picture').set path


browser.textarea(id: 'delete_user_comment').set 'HUUUUUGEE Respect!'
browser.button(id: 'new_user_submit').click


browser.button(id: 'new_popup_window').click