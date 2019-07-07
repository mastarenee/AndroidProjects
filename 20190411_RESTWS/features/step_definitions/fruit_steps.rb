Given /^the system knows about the following tasks $():$/ do |fruits|
  File.open('fruits.json', 'w') do |io|
    io.write(fruits.hashes.to_json)
  end
end

