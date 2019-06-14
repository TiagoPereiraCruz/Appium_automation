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

Then("I see {string} as a current unit converter") do |current_unit|
  unit_text = find_element(id: "action_bar").find_elements(class: "android.widget.TextView")[0].text
  expect(unit_text).to eql current_unit
end

Then("I select {string} from left unit picker") do |value|
  left_picker_text = find_elements(id: "select_unit_spinner")[0].click

  2.times {
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.5, offset_y: 0.8, duration: 600).perform
  }

  until exists { text(value).click }
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.5, offset_y: 0.2, duration: 600).perform
  end
end
