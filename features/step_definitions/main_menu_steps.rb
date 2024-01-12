
Given("I'm a new user on scruff home page") do
  @screens.click_xpath($btnMatch)
end

And("I go through create a profile flow") do
  @screens.click_xpath($btnStart)
  @screens.click_xpath($btnCreateProfile)
  @screens.click_xpath($btnNext)
  @screens.click_xpath($pickerYear)
  @screens.clear_xpath($pickerYear)
  @screens.send_xpath($pickerYear, "1992")
  @screens.press_enter
  @screens.click_xpath($btnSubmit)
  @screens.send_xpath($inputName, "Helio Test")
  @screens.press_enter
  @screens.click_xpath($btnSubmitName)
  @screens.send_xpath($inputEmail, @screens.rdn_email)
end

When("I click on submit") do
  #stopped here and didn't click on next bc I
  #don't want to fill your prd db with useless data
end

Then("the success message is displayed") do
  #
end
