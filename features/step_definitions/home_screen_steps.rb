Then("Left unit picker value should be {string}") do |left_value|
  left_picker_text = find_elements(id: "select_unit_spinner")[0].text
  expect(left_picker_text).to eql left_value
end

Then("Right unit picker should be {string}") do |right_value|
  right_picker_text = find_elements(id: "select_unit_spinner")[1].text
  expect(right_picker_text).to eql right_value
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
  added_favorite = text(unit_type).text
  expect(added_favorite).to eql unit_type
end

Then("I press on search icon") do
  find_element(id: "action_search").click
end

Then("I type {string} in search field") do |text|
  find_element(id: "search_src_text").send_keys(text)
end

Then("I press return button on soft keyboard") do
  Appium::TouchAction.new.tap(x: 0.99, y: 0.99, count: 1).perform
end

Then("I see {string} as a current unit converter") do |current_unit|
  unit_text = find_element(id: "action_bar").find_element(class: "android.widget.TextView").text
  expect(unit_text).to eql current_unit
end
