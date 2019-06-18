Then("Left unit picker value should be {string}") do |left_value|
  left_picker_text = find_elements(id: "select_unit_spinner")[0].text
  expect(left_picker_text).to eql left_value
end

Then("Right unit picker should be {string}") do |right_value|
  right_picker_text = find_elements(id: "select_unit_spinner")[1].text
  expect(right_picker_text).to eql right_value
end

Then(/^show All button should be (enabled|disabled)$/) do |state|
  button_state = find_element(id: "btn_show_all").enabled?

  if state == "enabled"
    expect(button_state).to eql true
  elsif state == "disabled"
    expect(button_state).to eql false
  end
end

When("I press on clear button") do
  puts "clear button is pressed"
end

When("I type {string} on application keyboard") do |target|
  digits = target.split("")

  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
end

Then("I should see result as {string}") do |result|
  value = find_element(id: "target_value").text
  expect(value).to eql result
end

Then("I press on Add to Favorites icon") do
  find_element(id: "action_add_favorites").click
end

Then("I press on Favorite conversions") do
  text("Favorite conversions").click
end

Then("I verify {string} added to Favorite conversions list") do |unit_type|
  added_favorite = find_element(id: "favorites_item_hint").text
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

Then("I see {string} as a header name") do |current_unit|
  unit_text = find_element(id: "action_bar").find_elements(class: "android.widget.TextView")[0].text
  expect(unit_text).to eql current_unit
end

Then("I select {string} from left unit picker") do |value|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(value)
end

Then("I select {string} from menu") do |value|
  text(value).click
end

Then("I select {string} from right unit picker") do |value|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(value)
end

When("I press on switch units button") do
  find_element(id: "img_switch").click
end

Then("I should see text {string}") do |value|
  text(value)
end

Then(/^I verify that (\d+)(?:st|nd|rd|th)? result in history list is "([^"]*)"$/) do |index, text|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  actual_text = array_of_elements[index - 1].find_element(id: "history_item_hint").text

  expect(actual_text).to eql text
end

When(/^I press delete from history at (\d+)(?:st|nd|rd|th)? row$/) do |index|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  array_of_elements[index - 1].find_element(id: "deleteIcon").click
end
