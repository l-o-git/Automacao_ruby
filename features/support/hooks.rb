
Before do
  puts"Running before hooks"
  $driver
  @screen = ScreenObject::ScrennsFactory.new
  @screens = @screen.screens_page
end

After do
  puts"Running after hooks"
  sleep 3
  driver_quit()
end
