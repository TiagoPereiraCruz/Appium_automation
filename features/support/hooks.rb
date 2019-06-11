Before do
  # inicia o driver do appium antes de cada teste
  $driver.start_driver
end

After do
  # encerra o driver ao fim de cada teste
  sleep 3
  $driver.driver_quit
end
