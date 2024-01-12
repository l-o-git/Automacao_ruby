
class BaseScreen

  def element_displayed?(element, timeout = 60)
    wait(timeout) { get_element(element).displayed? }
  rescue Timeout::Error => e
    raise "Element #{element} not visible \nError: #{e.message}"
  end
end
