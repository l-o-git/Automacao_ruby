module ScreenObject
  class Screens < BaseScreen
    # ------> elements
    def initialize
      $btnMatch = "//android.view.View[@content-desc='Match']"
      $btnStart = "//*[@class='android.widget.Button']"
      $btnCreateProfile = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/button']"
      $btnNext = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/button_next']"
      $pickerYearText = "//android.widget.DatePicker[@resource-id='com.appspot.scruffapp:id/pew_birthday_picker']//android.widget.EditText[@resource-id='android:id/numberpicker_input' and @text='2023']"
      $pickerYear = "(//android.widget.DatePicker[@resource-id='com.appspot.scruffapp:id/pew_birthday_picker']//android.widget.EditText[@resource-id=('android:id/numberpicker_input')])[3]"
      $btnSubmit = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/pew_birthday_submit']"
      $inputName = "//android.widget.EditText[@resource-id='com.appspot.scruffapp:id/pew_name_field']"
      $btnSubmitName ="//android.widget.Button[@resource-id='com.appspot.scruffapp:id/pew_name_submit']"
      $btnNext = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/button_next']"
      $linkSkip = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/pew_email_skip']"
      $inputEmail = "//android.widget.EditText[@resource-id='com.appspot.scruffapp:id/pew_email_field']"
      $btnEmailNext = "//android.widget.Button[@resource-id='com.appspot.scruffapp:id/pew_email_submit']"
    end





    # ------> actions
    def click_xpath(el)
     $driver.find_element(:xpath, "#{el}").click

    end

    def clear_xpath(el)
      $driver.find_element(:xpath, "#{el}").clear
    end

    def send_xpath(el, text)
      $driver.find_element(:xpath, "#{el}").send_keys("#{text}")
    end

    def enabled_xpath(el)
      $driver.find_element(:xpath, "#{el}").enabled?
    end


    def press_enter
      $driver.action.send_keys("\n").perform
    end

    def rdn_email
      Faker::Internet.email
    end


  end
end
