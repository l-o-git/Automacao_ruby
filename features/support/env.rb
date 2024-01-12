require 'appium_lib_core'
require 'appium_lib'
require 'rubygems'
require 'pry'
require 'selenium'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'appium_capybara'
require 'faker'

desired_caps_ios = {
  platform:        "Mac",
  deviceName:      "iPhone Simulator",
  platformName:    "iOS",
  platformVersion: "12.4",
  app:             "full/path/to/app.zip"
}

url = "http://localhost:4723/wd/hub" # or a sauce labs url

Capybara.register_driver(:appium) do |app|
    appium_lib_options = {
      server_url: url
    }
    all_options = {
      appium_lib: appium_lib_options,
      caps: desired_caps_ios
    }
    Appium::Capybara::Driver.new app, all_options
end

Capybara.default_max_wait_time = 10
Capybara.default_driver = :appium




CAPABILITIES = {
  platformName: 'Android',
  deviceName: 'M20007J3SY',
  app: (File.join(File.dirname(__FILE__), "SCRUFF_7.16.0.apk")),
  appPackage: 'com.appspot.scruffapp',
  appActivity: 'com.appspot.scruffapp.HomeActivity',
  automationName: 'UiAutomator2',
  udid: "56751683",
  newCommandTimeout: "3600",
  autoGrantPermissions: "true"
}



SERVER_URL = 'http://127.0.0.1:4723'



  $driver = Appium::Driver.new(url: SERVER_URL, capabilities: CAPABILITIES).start_driver
  Appium.promote_appium_methods Object
  $core = ::Appium::Core.for(url: SERVER_URL, capabilities: CAPABILITIES)


def driver_quit
  $driver.quit
end

# def swipe_left_on(element, vezes = 1)
#   elemento = $driver.find_element(:"#{element['tipo_busca']}", element['value'])
#   coordination_y = elemento.location.y
#   vezes.times { Appium::TouchAction.new.swipe(start_x: 550, start_y: coordination_y, end_x: 50, end_y: coordination_y, duration: 500).perform }
#   $logger.info("Fez scroll para esquerda no elemento #{element['value']}")
#     # if ios?
#     #   vezes.times { Appium::TouchAction.new.swipe(direction: 'left') }
#     # else
#       vezes.times { Appium::TouchAction.new.swipe(start_x: 900, start_y: 0.5, offset_x: 100, offset_y: 0.5, duration: 1500).perform }
#     # end
#     $logger.info("Fez scroll para esquerda #{vezes} vez(es)")
# end

# def swipe_left(element=nil,vezes = 1)
#   # if ios?
#   #   coordination_y = find(element).location.y
#   #   vezes.times { Appium::TouchAction.new.swipe(start_x: 900, start_y: coordination_y, end_x: 100, end_y: coordination_y, duration: 500).perform }
#   # else
#     vezes.times { Appium::TouchAction.new.swipe(start_x: 900, start_y: 5, offset_x: 100, offset_y: 5, duration: 500).perform }
#   # end
#   $logger.info("Fez scroll para esquerda #{vezes} vez(es)")
# end

def swipe(el, direction)
  $driver.execute_script('mobile: swipeGesture','elementId': el, 'direction':"#{direction}", 'percent': 0.75)
end
