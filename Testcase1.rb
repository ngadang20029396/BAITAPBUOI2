require 'webdrivers'
driver = Selenium::WebDriver.for :chrome

begin
driver.get 'https://www.google.com/'
sleep 5

ensure
driver.quit

end