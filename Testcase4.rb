require 'webdrivers'
driver = Selenium::WebDriver.for :chrome

begin
driver.get 'https://www.google.com/'
driver.manage.window.maximize
puts driver.manage.window.size
sleep 5
puts driver.current_url

ensure
driver.quit

end