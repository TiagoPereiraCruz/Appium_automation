When("I swipe from far left to right") do
  Appium::TouchAction.new.swipe(start_x: 10, start_y: 0.5, end_x: 900, end_y: 0.5, duration: 600).perform
end

Then("I swipe from right to left") do
  Appium::TouchAction.new.swipe(start_x: 900, start_y: 0.5, end_x: 30, end_y: 0.5, duration: 600).perform
end

Then("I swipe from far right to left") do
  Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, end_x: 0.5, end_y: 0.5, duration: 600).perform
end

When("I swipe from left to right") do
  Appium::TouchAction.new.swipe(start_x: 90, start_y: 0.5, end_x: 900, end_y: 0.5, duration: 600).perform
end
