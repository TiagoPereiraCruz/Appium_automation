Then("Left unit picker value should be {string}") do |value|
  puts "Left unit picker value is #{value}"
end

Then("Right unit picker should be {string}") do |value|
  puts "Right unit picker value is #{value}"
end

Then(/^show All button should be (enabled|disabled|undefined)$/) do |state|
  if state == "enabled"
    puts "button is enabled"
  elsif state == "disabled"
    puts "button is disabled"
  elsif state == "undefined"
    puts "button is undefined"
  end
end

When("I press on clear button") do
  puts "clear button is pressed"
end

When("I type {string} to target text field") do |target|
  puts "target is #{target}"
end

Then("I should see result as {string}") do |result|
  puts "result is #{result}"
end

Then("I press on Add to Favorites icon") do
  find_element(id: "action_add_favorites").click
end

Then("I press on Favorite conversions") do
  text("Favorite conversions").click
end

Then("I verify {string} added to Favorite conversions list") do |unit_type|
  text(unit_type)
end