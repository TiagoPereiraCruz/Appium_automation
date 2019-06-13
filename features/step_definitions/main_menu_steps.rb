Given("I land on Home screen") do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When("I press on Menu icon") do
  find_element(accessibility_id: "Open navigation drawer").click
end

Then("I should see left side menu") do
  side_menu = text("Unit Converter").text
  expect(side_menu).to eql "Unit Converter"
end

When("I press on My conversions button") do
  text("My conversions").click
end

Then("I land on My conversions screen") do
  my_conversion = find_element(class: "android.widget.TextView").text
  expect(my_conversion).to eql "My conversions"
end
